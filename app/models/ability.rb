class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)

    if user.has_role? :admin
      can :manage, :all

    elsif user.has_role? :professional

      can :create, Job # see user update form
      can :manage, Job do |job|
        job.user == user
      end
      # see user update form
      can :update, Job do |job|
        job.user == user
      end
      can :destroy, Job do |job|
        job.user == user
      end

      can :create, Review
      can :manage, Review do |review|
        review.user == user
      end
      # see restaurants show
      can :update, Review do |review|
        review.user == user
      end
      can :destroy, Review do |review|
        review.user == user
      end

      can :manage, User do |user_object|
        user_object == user
      end

    else
      can :read, :all
      can :create, User
      can :manage, User do |user_object|
        user_object == user
      end
    end

  end
end
