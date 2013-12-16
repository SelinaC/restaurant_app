require 'will_paginate/collection'

class UsersController < Devise::RegistrationsController

  before_filter :repair_nested_params
  before_filter :extract_job_params, only: [:create, :update, :destroy]

  def index
    # @users = User.all
    page = params[:page] || 1
    per_page = 5

    # users = []
    # all_users = User.all
    # all_users.each do |user|
    #   if user.role == "professional"
    #     users << user
    #   end
    # end

    @users = User.where(:role => "professional").paginate(page: page, per_page: per_page).order('last_name')

    # @users = WillPaginate::Collection.create(page, per_page, values.length) do |pager|
      # pager.replace values

    # @users = users.paginate(page: page, per_page: per_page).order('last_name')
    # @users, @alphaParams = User.where(:role => "professional").alpha_paginate(params[:letter]){|user| user.last_name}
    # must change to differentiate 'staff' users from 'foodie' users
  end

  def show
    @user = User.find params[:id]
    @jobs = @user.jobs.order('employed_to DESC')
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
