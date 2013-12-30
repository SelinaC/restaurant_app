require 'will_paginate/collection'

class UsersController < Devise::RegistrationsController

  before_filter :authenticate_user!, except: [:index, :show]
  before_filter :repair_nested_params
  before_filter :extract_job_params, only: [:create, :update, :destroy]

  authorize_resource

  def index
    # @users = User.all
    page = params[:page] || 1
    per_page = 6

    # users = []
    # all_users = User.all
    # all_users.each do |user|
    #   if user.role == "professional"
    #     users << user
    #   end
    # end

    # users = User.arel_table
    @all = User.where(:role => "professional")
    # @nonull = User.where(users[:role].eq('professional').and(
    #        users[:last_name].not_eq("")))
    # @yesnull = User.where(users[:role].eq('professional').and(
    #        users[:last_name].eq("")))
    # @full_list = @nonull | @yesnull # does the same as +
    # @users = @nonull+@yesnull


    # @users = User.where(:role => 'professional', :last_name => "")
    #   # :role => 'professional') unless :last_name.blank?
    @users = @all.paginate(page: page, per_page: per_page).order('last_name asc')

    # mysql:
    # ORDER BY NULLIF(first_name, '') DESC NULLS LAST

    # @yesnull = User.where("collection_id is null")
    # @users = @nonull+@yesnull

    # @users = User.where(:role => "professional").paginate(page: page, per_page: per_page).order('last_name ASC NULLS FIRST')

    # @users = WillPaginate::Collection.create(page, per_page, values.length) do |pager|
      # pager.replace values

    # @users = users.paginate(page: page, per_page: per_page).order('last_name')
    # @users, @alphaParams = User.where(:role => "professional").alpha_paginate(params[:letter]){|user| user.last_name}
    # must change to differentiate 'staff' users from 'foodie' users
  end

  def show
    @user = User.find params[:id]
    @jobs = @user.jobs.order('employed_to DESC')

    page = params[:page] || 1
    per_page = 3
    @reviews = @user.reviews.paginate(page: page, per_page: per_page)
  end

  def update
    # super
    @user = current_user
    @user.update_attributes params[:user]

    @jobs ||= []
    @jobs.each do |job_params|
      job = Job.find job_params[:id]
      job.update_attributes job_params
    end

    redirect_to @user
  end

  # def delete_job
  #   binding.pry
  #   @user = current_user
  # end

  def update_password
    @user = current_user
    @user.update_with_password params.slice(
      :password,
      :password_confirmation,
      :current_password
    )
    redirect_to @user
  end

  def foodies
    page = params[:page] || 1
    per_page = 6

    @users = User.where(:role => "foodie").paginate(page: page, per_page: per_page).order('last_name')
  end

private

  def extract_job_params
    @jobs = params["user"].delete("jobs_attributes")
  end

  def repair_nested_params(obj = params)
    obj.each do |key, value|
      if value.is_a? Hash
        # If any non-integer keys
        if value.keys.find {|k, _| k =~ /\D/ }
          repair_nested_params(value)
        else
          obj[key] = value.values
          value.values.each {|h| repair_nested_params(h) }
        end
      end
    end
  end

end
