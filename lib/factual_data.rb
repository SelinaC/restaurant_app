require 'factual'

module FactualData

  def self.get_data_by_name
    name_array = [ "Dishoom", "Maze", "Zizzi", "Mamuska!", "Tas Restaurant", "Zakudia", "Hiba Restaurant", "El Vergel"]
    factual = Factual.new(ENV["FACTUAL_DATA_KEY"], ENV["FACTUAL_DATA_SECRET"])
    @@name_query_result = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$includes_any" => name_array}}]}).rows
  end

  def self.get_data_by_local_authority
    local_authority_array = ["southwark"]
    factual = Factual.new(ENV["FACTUAL_DATA_KEY"], ENV["FACTUAL_DATA_SECRET"])
    @@local_authority_query_result = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"neighborhood" => {"$includes_any" => local_authority_array}}]}).rows
  end

  def self.assign_attributes(rest)
    new_rest = Restaurant.new

    new_rest.name = rest['name'].nil? ? "" : rest['name']
    new_rest.address1 = rest['address'].nil? ? "" : rest['address']

    if rest['address_extended'].nil?
      if rest['po_box'].nil?
        address2 = ""
      else
        address2 = rest['po_box']
      end
    else
      if rest['po_box'].nil?
        address2 = rest['address_extended']
      else
        address2 = rest['address_extended'] + rest['po_box']
      end
    end

    new_rest.town = rest['post_town'].nil? ? "" : rest['post_town']
    new_rest.towns = rest['neighborhood'].nil? ? "" : rest['neighborhood']
    new_rest.postcode = rest['postcode'].nil? ? "" : rest['postcode']
    new_rest.norm_postcode = new_rest.postcode.gsub(' ', '').upcase
    new_rest.phone = rest['tel'].nil? ?  "" : rest['tel']
    new_rest.latitude = rest['latitude'].nil? ? "" : rest['latitude']
    new_rest.longitude = rest['longitude'].nil? ? "" : rest['longitude']
    new_rest.email = rest['email'].nil? ? "" : rest['website']
    new_rest.website = rest['website'].nil? ? "" : rest['website']
    new_rest.cuisine = rest['cuisine'].nil? ? "" : rest['cuisine']
    new_rest.factual_id = rest['factual_id']
    new_rest.save!
  end

  def self.record_exists?(rest)
    results = Restaurant.where(factual_id: rest['factual_id'])
    if results.count == 0
      return false
    else
      return true
    end
  end

  def self.save_to_db
    @@local_authority_query_result.each do |rest|
      # if an entry exists in the db
      # with the same factual_id as the element we are evaluating
      # then skip (do not add to db)
      # else assign_attributes
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    # @@name_query_result.each do |rest|
    #    # if an entry exists in the db
    #   # with the same factual_id as the element we are evaluating
    #   # then skip (do not add to db)
    #   # else assign_attributes
        # if not record_exists?(rest)
        #   assign_attributes(rest)
        # end
    # end

  end

end

# SELECT * FROM Restaurants WHERE factual_id=939bdf43-f789-475c-a857-1057451e69e9;

# TEST QUERIES
# factual.table("restaurants-gb").filters("locality" => {"$eq" => "LONDON"}).rows.count
# {"$and": [{"region":{"$eq":"LONDON"}},{"locality":{"$eq":"LONDON"}},

# filters({ "$or" => [ {"$or" => [ {"name" => {"$bw" => "starbucks"}},
                                   #             {"name" => {"$bw" => "coffee"}}]},
                                   # {"$and" => [ {"name" => {"$search" => "tea"}},
                                   #              {"tel" => {"$blank" => false}} ]} ]})
# query = query.geo("$circle" => {"$center" => [34.06021, -118.41828], "$meters" => 5000})

  # factual.table("restaurants-gb").filters("factual_id" => {"$eq" => "0042dd30-01fd-42e6-a4ed-83bdb7598a75"}).rows.first

  # factual.table("restaurants-gb").filters("neighborhood" => {"$includes" => "southwark"}).rows

  # TEST factual_ids
  # 0042dd30-01fd-42e6-a4ed-83bdb7598a75
  # 2152b3ec-4543-454a-b23b-10d42dfdcba5
  # 19f4ccfa-7453-42d2-b138-d652955a331a
  # 19b04e32-67f3-4353-a641-bc599b97c5cf

  # api data field mappings to seed data:
  # name: name
  # address1: address
  # address2: address_extended + po_box
  # town: neighborhood
  # postcode: postcode
  # phone_number: tel
  # latitude: latitude
  # longitude: longitude
  # website: website
  # cuisine: cuisine

  # data required in seed:
  # :name, :address1, :address2, :town, :postcode, :phone, :cuisine, :email, :website, :hygiene_rating

  # api row sample
  # => {"address"=>"51 Moscow Rd",
  #  "admin_region"=>"England",
  #  "alcohol"=>true,
  #  "alcohol_bar"=>true,
  #  "alcohol_beer_wine"=>true,
  #  "category_ids"=>[312],
  #  "category_labels"=>[["Social", "Bars"]],
  #  "country"=>"gb",
  #  "cuisine"=>["Pub Food"],
  #  "factual_id"=>"1b55dbe1-e3dd-40e2-a26e-8a3dd41a9fe8",
  #  "fax"=>"0 20 7229 0647",
  #  "groups_goodfor"=>true,
  #  "hours"=>
  #   "{\"monday\":[[\"10:00\",\"23:00\"]],\"tuesday\":[[\"10:00\",\"23:00\"]],\"wednesday\":[[\"10:00\",\"23:00\"]],\"thursday\":[[\"10:00\",\"23:00\"]],\"friday\":[[\"10:00\",\"23:00\"]],\"saturday\":[[\"10:00\",\"23:00\"]],\"sunday\":[[\"12:00\",\"22:30\"]]}",
  #  "latitude"=>51.512393,
  #  "locality"=>"London",
  #  "longitude"=>-0.189862,
  #  "meal_breakfast"=>true,
  #  "meal_dinner"=>true,
  #  "meal_lunch"=>true,
  #  "name"=>"Phoenix",
  #  "neighborhood"=>["Bayswater", "Queensway"],
  #  "open_24hrs"=>false,
  #  "payment_cashonly"=>false,
  #  "post_town"=>"Bayswater",
  #  "postcode"=>"W2 4AL",
  #  "rating"=>4.5,
  #  "region"=>"London",
  #  "seating_outdoor"=>true,
  #  "tel"=>"020 7229 0647",
  #  "website"=>"http://www.punchpubs.co.uk"}
