require 'nokogiri'
require 'open-uri'

module FoodHygieneData

  def self.get_hygiene_rating

    block = Proc.new do |detail|
      puts detail
      begin
        detail.xpath('PostCode').first.content.gsub(' ', '').upcase
        detail.xpath('Scores/Hygiene').first.content.to_i
        detail.xpath('RatingDate').first.content
      rescue
        # does nothing
      else
        norm_postcode = detail.xpath('PostCode').first.content.gsub(' ', '').upcase
        r = Restaurant.find_by_norm_postcode(norm_postcode)
        if r
          r.hygiene_rating = detail.xpath('RatingValue').first.content.to_i
          r.hygiene_rating_date = detail.xpath('RatingDate').first.content
          r.save!
        else
          unused = UnusedRestaurant.new
          unused.hygiene_rating = detail.xpath('Scores/Hygiene').first.content.to_i
      #   unused.hygiene_rating_date = detail.xpath('RatingDate').first.content
      #   unused.postcode = detail.xpath('PostCode').first.content.to_s
      #   unused.norm_postcode = norm_postcode
      #   unused.name = detail.xpath('BusinessName').first.content.to_s
          unused.save!
        end
      end
    end

    path = Rails.root.join('db/fh_xml/fh_southwark.xml')
    file = File.open path
    doc = Nokogiri::XML(file)
    doc.xpath("//EstablishmentCollection/EstablishmentDetail[BusinessTypeID=1]").each(&block)
    file.close

  end

end

# Southwark:
# local authority code: 528
# http://ratings.food.gov.uk/OpenDataFiles/FHRS528en-GB.xml

# xpath in nokogiri

# http://ratings.food.gov.uk/authority-search/en-GB/%5E/%5E/
# <sort_order>/<business_type>/<local_authority_code>/%5E/<page_number?>/<items_per_page>/

# sort by a-z = alpha
# http://ratings.food.gov.uk/authority-search/en-GB/%5E/%5E/alpha/1/528/%5E/0/67/10

# sort by z-a = desc_alpha
# http://ratings.food.gov.uk/authority-search/en-GB/%5E/%5E/desc_alpha/1/528/%5E/0/1/10

# sort by relevance = Relevance
# http://ratings.food.gov.uk/authority-search/en-GB/%5E/%5E/Relevance/1/528/%5E/0/1/10

# business_type = Retailers - Others
# http://ratings.food.gov.uk/authority-search/en-GB/%5E/%5E/Relevance/4613/528/%5E/0/1/10


# business_type:
# All = 0
# Distributors/Transports = 7
# Restaurant/Cafe/Canteen = 1
# Retailers - Other = 4613
