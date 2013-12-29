class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)

      if user.has_role? :admin
        can :manage, :all

      # syntax for through relationship:
      # can :read, Position, client: { user_id: user.id }

      elsif user.has_role? :professional

        can :manage, User do |user_object|
          user_object == user
        end

        can :read, Restaurant
        # cannot :update, Restaurant implemented

        can :create, Job # see user update form, renders jobs/new
        can :destroy, Job, user_id: user.id
        # job update is covered under manage user (nested form for update job)

        can :create, Review
        # see restaurants show
        can :update, Review, user_id: user.id
        can :destroy, Review, user_id: user.id

      else
        can :read, :all
        can :create, User
        can :manage, User do |user_object|
          user_object == user
        end
      end

  end
end
