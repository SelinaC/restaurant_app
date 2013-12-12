module ReviewData

# need to change the user_ids to
# only those that have worked at the restaurant

  def self.create_demo_reviews
    review1 = Review.new
    review1.title = "title 1"
    review1.body = "review 1"
    review1.restaurant_id = 47
    review1.user_id = 15
    review1.save!

    review2 = Review.new
    review2.title = "title 2"
    review2.body = "review 2"
    review2.restaurant_id = 47
    review2.user_id = 3
    review2.save!

    review3 = Review.new
    review3.title = "title 3"
    review3.body = "review 3"
    review3.restaurant_id = 48
    review3.user_id = 15
    review3.save!

    review4 = Review.new
    review4.title = "title 4"
    review4.body = "review 4"
    review4.restaurant_id = 45
    review4.user_id = 13
    review4.save!

    review5 = Review.new
    review5.title = "title 5"
    review5.body = "review 5"
    review5.restaurant_id = 45
    review5.user_id = 6
    review5.save!

    review6 = Review.new
    review6.title = "title 6"
    review6.body = "review 6"
    review6.restaurant_id = 44
    review6.user_id = 7
    review6.save!

    review7 = Review.new
    review7.title = "title 7"
    review7.body = "review 7"
    review7.restaurant_id = 44
    review7.user_id = 6
    review7.save!

    review8 = Review.new
    review8.title = "title 8"
    review8.body = "review 8"
    review8.restaurant_id = 39
    review8.user_id = 7
    review8.save!

    review9 = Review.new
    review9.title = "title 9"
    review9.body = "review 9"
    review9.restaurant_id = 40
    review9.user_id = 7
    review9.save!

    review10 = Review.new
    review10.title = "title 10"
    review10.body = "review 10"
    review10.restaurant_id = 42
    review10.user_id = 10
    review10.save!

  end
end
