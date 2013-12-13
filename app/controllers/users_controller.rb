class UsersController < Devise::RegistrationsController

  before_filter :repair_nested_params
  before_filter :extract_job_params, only: [:create, :update]

  def index
    @users = User.all
    # must change to differentiate 'staff' users from 'foodie' users
  end

  def show
    @user = User.find params[:id]
  end

  def update
    super
    @user = current_user
    @jobs ||= []
    @jobs.each do |job_params|
      job = Job.find job_params[:id]
      job.update_attributes job_params
    end
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
