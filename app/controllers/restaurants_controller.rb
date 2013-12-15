class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all.sort_by {|x| [x.name, x.id]}
  end

  def show
    @restaurant = Restaurant.find params[:id]
    @review = Review.new
    @reviews = @restaurant.reviews.order('created_at DESC')
    @users = @restaurant.users.order('created_at DESC')
  end

end
