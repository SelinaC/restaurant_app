require 'factual'

module FactualData

  def self.get_data_by_name
    name_array = [ "Dishoom", "Maze", "Zizzi", "Mamuska!", "Tas", "Zakudia", "Hiba", "Vergel"]
    factual = Factual.new(ENV["FACTUAL_DATA_KEY"], ENV["FACTUAL_DATA_SECRET"])
    @@name_query_result = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$includes_any" => name_array}}]}).rows
    @@name_match_1 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Chez Nico Restaurants"}}]}).rows
    @@name_match_2 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Quadrato at the Four Seasons Hotel London"}}]}).rows
    @@name_match_3 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Claridge's"}}]}).rows
    @@name_match_4 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Roux at the Landau"}}]}).rows
    @@name_match_5 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "The Ritz London"}}]}).rows
    @@name_match_6 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "The Savoy Grill"}}]}).rows
    @@name_match_7 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Gordon Ramsay Holdings"}}]}).rows
    @@name_match_8 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Pearl Restaurant and Bar"}}]}).rows
    @@name_match_9 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "The Chancery"}}]}).rows
    @@name_match_10 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "The Soho Hotel"}}]}).rows
    @@name_match_11 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "The Square"}}]}).rows
    @@name_match_12 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Ottolenghi"}}]}).rows
    @@name_match_13 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Galvin La Chapelle"}}]}).rows
    @@name_match_14 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Sweetings"}}]}).rows
    @@name_match_15 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "London Jade Garden"}}]}).rows
    @@name_match_16 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "St. John Bar and Restaurant - Smithfield"}}]}).rows
    @@name_match_17 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "La Petite Maison"}}]}).rows
    @@name_match_18 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Princess Garden of Mayfair"}}]}).rows
    @@name_match_19 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Medlar Restaurant"}}]}).rows
    @@name_match_20 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Chez Bruce"}}]}).rows
    @@name_match_21 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Riva"}}]}).rows
    @@name_match_22 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "The River Cafe"}}]}).rows
    @@name_match_23 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Brawn"}}]}).rows
    @@name_match_24 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "The Modern Pantry"}}]}).rows
    @@name_match_25 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Kikuchi"}}]}).rows
    @@name_match_26 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Yum Bun"}}]}).rows
    @@name_match_27 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Rochelle Canteen"}}]}).rows
    @@name_match_28 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Leila's Shop"}}]}).rows
    @@name_match_29 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "St. John Bread and Wine"}}]}).rows
    @@name_match_30 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Spuntino"}}]}).rows
    @@name_match_31 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Bar Boulud"}}]}).rows
    @@name_match_32 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Yalla Yalla"}}]}).rows
    @@name_match_33 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Khan's"}}]}).rows
    @@name_match_34 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Locale Fulham"}}]}).rows
    @@name_match_35 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Galvin Bistrot De Luxe"}}]}).rows
    @@name_match_36 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Dock Kitchen"}}]}).rows
    @@name_match_37 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Somine Restaurant"}}]}).rows
    @@name_match_38 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "The Ivy"}}]}).rows
    @@name_match_39 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Hakkasan Mayfair"}}]}).rows
    @@name_match_40 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "L'Escargot"}}]}).rows
    @@name_match_41 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Duck and Waffle"}}]}).rows
    @@name_match_42 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Axis Bar and Kitchen"}}]}).rows
    @@name_match_43 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "One Aldwych"}}]}).rows
    @@name_match_44 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Dinner by Heston Blumenthal"}}]}).rows
    @@name_match_45 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "The Gun"}}]}).rows
    @@name_match_46 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Murano"}}]}).rows
    @@name_match_47 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Viajante"}}]}).rows
    @@name_match_48 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Bistro Bruno Loubet"}}]}).rows
    @@name_match_49 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Grain Store"}}]}).rows
    @@name_match_50 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Tapas Revolution"}}]}).rows
    @@name_match_51 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Moro"}}]}).rows
    @@name_match_52 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Morito"}}]}).rows
    @@name_match_53 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "Caravan"}}]}).rows
    @@name_match_54 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => "The Providores"}}]}).rows
    # @@name_match_55 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => ""}}]}).rows
    # @@name_match_56 = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"name" => {"$eq" => ""}}]}).rows

    # @@name_query_result << @@name_match_1
    # puts @@name_match_1.class
  end

  def self.get_data_by_local_authority
    local_authority_array = ["southwark", "westminster"]
    factual = Factual.new(ENV["FACTUAL_DATA_KEY"], ENV["FACTUAL_DATA_SECRET"])
    @@local_authority_query_result = factual.table("restaurants-gb").filters({"$and" => [{"locality" => {"$eq" => "LONDON"}}, {"neighborhood" => {"$includes_any" => local_authority_array}}]}).rows
    # puts @@local_authority_query_result.class
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
    new_rest.towns = rest['neighborhood'].nil? ? "" : (rest['neighborhood']).to_s.scan(/(\w+)+/).flatten.join(" ")
    new_rest.postcode = rest['postcode'].nil? ? "" : rest['postcode']
    new_rest.norm_postcode = new_rest.postcode.gsub(' ', '').upcase
    new_rest.phone = rest['tel'].nil? ?  "" : rest['tel']
    new_rest.latitude = rest['latitude'].nil? ? "" : rest['latitude']
    new_rest.longitude = rest['longitude'].nil? ? "" : rest['longitude']
    new_rest.email = rest['email'].nil? ? "" : rest['website']
    new_rest.website = rest['website'].nil? ? "" : rest['website']
    new_rest.cuisine = rest['cuisine'].nil? ? "" : rest['cuisine'].to_s.scan(/(\w+)+/).flatten.join(" ")
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

    @@name_query_result.each do |rest|
    #    # if an entry exists in the db
    #   # with the same factual_id as the element we are evaluating
    #   # then skip (do not add to db)
    #   # else assign_attributes
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_1.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_2.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_3.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_4.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_5.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_6.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_7.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_8.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_9.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_10.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_11.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_12.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_13.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_14.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_15.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_16.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_17.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_18.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_19.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_20.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_21.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_22.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_23.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_24.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_25.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_26.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_27.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_28.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_29.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_30.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_31.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_32.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_33.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_34.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_35.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_36.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_37.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_38.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_39.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_40.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_41.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_42.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_43.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_44.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_45.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_46.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_47.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_48.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_49.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_50.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_51.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_52.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_53.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    @@name_match_54.each do |rest|
      if not record_exists?(rest)
        assign_attributes(rest)
      end
    end

    # @@name_match_55.each do |rest|
    #   if not record_exists?(rest)
    #     assign_attributes(rest)
    #   end
    # end

    # @@name_match_56.each do |rest|
    #   if not record_exists?(rest)
    #     assign_attributes(rest)
    #   end
    # end

    # @@name_match_57.each do |rest|
    #   if not record_exists?(rest)
    #     assign_attributes(rest)
    #   end
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
