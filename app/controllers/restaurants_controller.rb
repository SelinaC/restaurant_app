class RestaurantsController < ApplicationController

  def index
    page = params[:page] || 1
    per_page = 5
    @restaurants= Restaurant.paginate(page: page, per_page: per_page).order('name').all
    # @restaurants = Restaurant.all.sort_by {|x| [x.name, x.id]}
  end

  def show
    @restaurant = Restaurant.find params[:id]
    @review = Review.new
    @reviews = @restaurant.reviews.order('created_at DESC')
    @users = @restaurant.users.order('created_at DESC')
    @users.uniq!
  end

end
