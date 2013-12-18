require 'nokogiri'
require 'open-uri'

module FoodHygieneData

  def self.get_hygiene_rating

    block = Proc.new do |detail|
      puts detail.xpath('FHRSID').first.content.to_s
      begin
        detail.xpath('PostCode').first.content.gsub(' ', '').upcase
        detail.xpath('RatingValue').first.content.to_i
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
          unused.hygiene_rating = detail.xpath('RatingValue').first.content.to_i
          unused.hygiene_rating_date = detail.xpath('RatingDate').first.content
          unused.postcode = detail.xpath('PostCode').first.content.to_s
          # unused.norm_postcode = norm_postcode
          unused.name = detail.xpath('BusinessName').first.content.to_s
          unused.save!
        end
      end
    end

    path1 = Rails.root.join('db/fh_xml/fh_cityoflondon.xml')
    file1 = File.open path1
    doc1 = Nokogiri::XML(file1)
    doc1.xpath("//EstablishmentCollection/EstablishmentDetail[BusinessTypeID=1]").each(&block)
    file1.close

    path2 = Rails.root.join('db/fh_xml/fh_hamm_and_fulham.xml')
    file2 = File.open path2
    doc2 = Nokogiri::XML(file2)
    doc2.xpath("//EstablishmentCollection/EstablishmentDetail[BusinessTypeID=1]").each(&block)
    file2.close

    path3 = Rails.root.join('db/fh_xml/fh_islington.xml')
    file3 = File.open path3
    doc3 = Nokogiri::XML(file3)
    doc3.xpath("//EstablishmentCollection/EstablishmentDetail[BusinessTypeID=1]").each(&block)
    file3.close

    path4 = Rails.root.join('db/fh_xml/fh_kensington_and_chelsea.xml')
    file4 = File.open path4
    doc4 = Nokogiri::XML(file4)
    doc4.xpath("//EstablishmentCollection/EstablishmentDetail[BusinessTypeID=1]").each(&block)
    file4.close

    path5 = Rails.root.join('db/fh_xml/fh_southwark.xml')
    file5 = File.open path5
    doc5 = Nokogiri::XML(file5)
    doc5.xpath("//EstablishmentCollection/EstablishmentDetail[BusinessTypeID=1]").each(&block)
    file5.close

    path6 = Rails.root.join('db/fh_xml/fh_wandsworth.xml')
    file6 = File.open path6
    doc6 = Nokogiri::XML(file6)
    doc6.xpath("//EstablishmentCollection/EstablishmentDetail[BusinessTypeID=1]").each(&block)
    file6.close

    path7 = Rails.root.join('db/fh_xml/fh_westminster.xml')
    file7 = File.open path7
    doc7 = Nokogiri::XML(file7)
    doc7.xpath("//EstablishmentCollection/EstablishmentDetail[BusinessTypeID=1]").each(&block)
    file7.close

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
