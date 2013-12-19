module ReviewData

# need to change the user_ids to
# only those that have worked at the restaurant

  def self.create_demo_reviews
    review1 = Review.new
    review1.title = "The Best Breakfast!"
    review1.body = "Recommended for: Breakfast. Turkish eggs or brown rice, miso and apple porridge."
    review1.restaurant_id = Restaurant.where(name: "The Providores").first.id
    review1.user_id = User.where(username: "AnnaHansen").first.id
    review1.save!

    review2 = Review.new
    review2.title = "Great breakfast!"
    review2.body = "Recommended for: Breakfast. The rarebit with poached egg and chard."
    review2.restaurant_id = Restaurant.where(name: "The Providores").first.id
    review2.user_id = User.where(username: "AnnaHansen").first.id
    review2.save!

    review3 = Review.new
    review3.title = "Lovely treat."
    review3.body = "Recommended for: High-end. Best stuffed pig’s trotter with madeira sauce."
    review3.restaurant_id = Restaurant.where(name: "Galvin La Chapelle").first.id
    review3.user_id = User.where(username: "AnnaHansen").first.id
    review3.save!

    review4 = Review.new
    review4.title = "Fantastic working chaos"
    review4.body = "It couldn’t exist anywhere but the City of London. Recommended for: Local favourite."
    review4.restaurant_id = Restaurant.where(name: "Sweetings").first.id
    review4.user_id = User.where(username: "FergusH").first.id
    review4.save!

    review5 = Review.new
    review5.title = "Go for the dumplings."
    review5.body = "Recommended for: Bargain. The dumplings."
    review5.restaurant_id = Restaurant.where(name: "London Jade Garden").first.id
    review5.user_id = User.where(username: "FergusH").first.id
    review5.save!

    review6 = Review.new
    review6.title = "Love this place!"
    review6.body = "Recommended for: Regular neighbourhood. We love the diversity of the menus."
    review6.restaurant_id = Restaurant.where(name: "Dock Kitchen").first.id
    review6.user_id = User.where(username: "SamanthaC").first.id
    review6.save!

    review7 = Review.new
    review7.title = "Recommended for: late night"
    review7.body = "Open twenty-four hours a day for Turkish mezze. We always have the yoghurt soups and delicious slow-cooked dishes."
    review7.restaurant_id = Restaurant.where(name: "Somine Restaurant").first.id
    review7.user_id = User.where(username: "SamanthaC").first.id
    review7.save!

    review8 = Review.new
    review8.title = "The very best of old London."
    review8.body = "Recommended for: Local favourite."
    review8.restaurant_id = Restaurant.where(name: "St. John Bar and Restaurant - Smithfield").first.id
    review8.user_id = User.where(username: "Theo").first.id
    review8.save!

    review9 = Review.new
    review9.title = "Fantastic dim sum."
    review9.body = "Recommended for: Regular neighbourhood."
    review9.restaurant_id = Restaurant.where(name: "Princess Garden of Mayfair").first.id
    review9.user_id = User.where(username: "Theo").first.id
    review9.save!

    review10 = Review.new
    review10.title = "Bar Boulud is great for a late-night table."
    review10.body = "Excellent service and a buzzy atmoshphere. Recommended for: Late night"
    review10.restaurant_id = Restaurant.where(name: "Bar Boulud").first.id
    review10.user_id = User.where(username: "Bruno").first.id
    review10.save!

    review11 = Review.new
    review11.title = "A bargain!"
    review11.body = "Great Beirut street food."
    review11.restaurant_id = Restaurant.where(name: "Yalla Yalla").first.id
    review11.user_id = User.where(username: "Bruno").first.id
    review11.save!

    # review12 = Review.new
    # review12.title = "title 10"
    # review12.body = "review 10"
    # review12.restaurant_id = 42
    # review12.user_id = 10
    # review12.save!

    # review13 = Review.new
    # review13.title = "title 10"
    # review13.body = "review 10"
    # review13.restaurant_id = 42
    # review13.user_id = 10
    # review13.save!

    # review14 = Review.new
    # review14.title = "title 10"
    # review14.body = "review 10"
    # review14.restaurant_id = 42
    # review14.user_id = 10
    # review14.save!

    # review15 = Review.new
    # review15.title = "title 10"
    # review15.body = "review 10"
    # review15.restaurant_id = 42
    # review15.user_id = 10
    # review15.save!

    # review16 = Review.new
    # review16.title = "title 10"
    # review16.body = "review 10"
    # review16.restaurant_id = 42
    # review16.user_id = 10
    # review16.save!

    # review16 = Review.new
    # review16.title = "title 10"
    # review16.body = "review 10"
    # review16.restaurant_id = 42
    # review16.user_id = 10
    # review16.save!

    # review17 = Review.new
    # review17.title = "title 10"
    # review17.body = "review 10"
    # review17.restaurant_id = 42
    # review17.user_id = 10
    # review17.save!

    # review18 = Review.new
    # review18.title = "title 10"
    # review18.body = "review 10"
    # review18.restaurant_id = 42
    # review18.user_id = 10
    # review18.save!

    # review19 = Review.new
    # review19.title = "title 10"
    # review19.body = "review 10"
    # review19.restaurant_id = 42
    # review19.user_id = 10
    # review19.save!

    # review20 = Review.new
    # review20.title = "title 10"
    # review20.body = "review 10"
    # review20.restaurant_id = 42
    # review20.user_id = 10
    # review20.save!

    # review21 = Review.new
    # review21.title = "title 10"
    # review21.body = "review 10"
    # review21.restaurant_id = 42
    # review21.user_id = 10
    # review21.save!

    # review22 = Review.new
    # review22.title = "title 10"
    # review22.body = "review 10"
    # review22.restaurant_id = 42
    # review22.user_id = 10
    # review22.save!

    # review23 = Review.new
    # review23.title = "title 10"
    # review23.body = "review 10"
    # review23.restaurant_id = 42
    # review23.user_id = 10
    # review23.save!

    # review24 = Review.new
    # review24.title = "title 10"
    # review24.body = "review 10"
    # review24.restaurant_id = 42
    # review24.user_id = 10
    # review24.save!

    # review25 = Review.new
    # review25.title = "title 10"
    # review25.body = "review 10"
    # review25.restaurant_id = 42
    # review25.user_id = 10
    # review25.save!

    # review26 = Review.new
    # review26.title = "title 10"
    # review26.body = "review 10"
    # review26.restaurant_id = 42
    # review26.user_id = 10
    # review26.save!

    # review27 = Review.new
    # review27.title = "title 10"
    # review27.body = "review 10"
    # review27.restaurant_id = 42
    # review27.user_id = 10
    # review27.save!

  end
end
