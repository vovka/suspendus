# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
    if user.superadmin_role?
      can :manage, :all
      cannot :manage, Donate
      cannot :manage, Claim
    elsif user.establishment_role?
      can [:index, :show, :edit, :update], Establishment do |establishment|
        establishment.users.include?(user)
      end
      can :index, Transaction do |establishment|
        establishment.users.include?(user)
      end
      can [:create, :update], Claim do |establishment|
        establishment.users.include?(user)
      end
    else # regular user
      can :index, Establishment
      can :show, Establishment
      can :create, Donate
    end
  end
end
