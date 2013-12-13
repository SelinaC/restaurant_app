class JobsController < ApplicationController

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(params[:job])
    @job.user = current_user
    if @job.save
      redirect_to user_path(@job.user)
    else
      render action: "new"
    end
  end

  # def destroy
  #   # super
  #   @user = current_user
  #   binding.pry
  #   # @jobs ||= []
  #   # @jobs.each do |job_params|
  #   #   binding.pry
  #   #   job = Job.find job_params[:id]
  #   #   job.delete
  #   # end
  #   redirect_to user_path(@user)
  # end

  # def destroy
  #   binding.pry
  #   job = Job.find params[:id]
  #   job.delete
  #   redirect_to user_path(current_user)
  # end

end

