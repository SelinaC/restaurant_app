class SearchesController < ApplicationController

before_filter :authenticate_user!, except: [:index, :show]

  def create
    @search = Search.new params[:query]
    render :index
  end
end
