module ReviewData

  def self.create_demo_reviews
    review1 = Review.new
    review1.title = "title 1"
    review1.body = "review 1"
    review1.save!

    review2 = Review.new
    review2.title = "title 2"
    review2.body = "review 2"
    review2.save!

    review3 = Review.new
    review3.title = "title 3"
    review3.body = "review 3"
    review3.save!

    review4 = Review.new
    review4.title = "title 4"
    review4.body = "review 4"
    review4.save!

  end
end
