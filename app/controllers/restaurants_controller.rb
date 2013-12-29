class RestaurantsController < ApplicationController

before_filter :authenticate_user!, except: [:index, :show]
authorize_resource

  def index
    page = params[:page] || 1
    per_page = 5
    @restaurants = Restaurant.paginate(page: page, per_page: per_page).order('name').all
    # @restaurants = Restaurant.all.sort_by {|x| [x.name, x.id]}
  end

  def show
    @restaurant = Restaurant.find params[:id]
    @review = Review.new
    @reviews = @restaurant.reviews.order('created_at DESC')
    @users = @restaurant.users.order('created_at DESC')
    @users.uniq!

    # add to user model as attribute of restaurant and then remove below
    # so that can be used in Restaurant index and globally wherever the restaurant is used.
    case @restaurant.hygiene_rating
      when 0
        @fhrs_image = "/assets/fhrs_0_en-gb.jpg"
      when 1
        @fhrs_image = "/assets/fhrs_1_en-gb.jpg"
      when 2
        @fhrs_image = "/assets/fhrs_2_en-gb.jpg"
      when 3
        @fhrs_image = "/assets/fhrs_3_en-gb.jpg"
      when 4
        @fhrs_image = "/assets/fhrs_4_en-gb.jpg"
      when 5
        @fhrs_image = "/assets/fhrs_5_en-gb.jpg"
      else
        @fhrs_image = nil
    end
  end

  def edit
    @restaurant = Restaurant.find params[:id]
  end

  def update
    @restaurant = Restaurant.find params[:id]
    if @restaurant.update_attributes params[:restaurant]
    else
      render action: "edit"
    end
    redirect_to @restaurant
  end
end
