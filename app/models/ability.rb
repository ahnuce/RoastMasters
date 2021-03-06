class Ability
  include CanCan::Ability
  def initialize(user)

    if user.admin?
      can :manage, :all
    else

        can :update, Comment do |comment|
          comment.user == user
        end
        can :destroy, Comment do |comment|
        comment.user == user
      end
    end

    can :create, Comment
  end
end
