class Ability
  include CanCan::Ability
  def initialize(user)
    can :read, :all                   # allow everyone to read everything
    if current_user.admin
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard                  # allow access to dashboard
        can :manage, :all             # allow superadmins to do anything
      else user.role? :comments
        can :update, Comment, :hidden => false  # allow sales to only update visible products
      end
    end
  end
