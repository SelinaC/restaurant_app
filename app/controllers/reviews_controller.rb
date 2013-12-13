class ReviewsController < ApplicationController

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

end
