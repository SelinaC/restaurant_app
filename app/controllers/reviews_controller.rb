class ReviewsController < ApplicationController

  def create
    @review = Review.new
    @review.restaurant_id = params['restaurant_id']
    @review.user_id = current_user.id
    @review.title = params['review'][:title]
    @review.body = params['review'][:body]
    if @review.save
      redirect_to @review.restaurant
    else
      @restaurant = Restaurant.find params[:restaurant_id]
      render :template => "restaurants/show"
    end
  end

  def edit
    @review = Review.find params[:id]
  end

  def update
    @review = Review.find params[:id]
    if @review.update_attributes params[:review]
    else
      render action: "edit"
    end
    redirect_to @review.restaurant
  end

  def destroy
    review = Review.find params[:id]
    review.delete
    redirect_to review.restaurant
  end
end
