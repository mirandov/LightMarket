class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    if user

      if user.has_role?("admin")
        can :manage, :all
      else
        cannot :index, AdminPanel
        cannot :new, Product
        cannot :edit, Product
        cannot :destroy, Product
        cannot :update, Product
        cannot :show_admin, Product
        cannot :new, Subcategory
        cannot :edit, Subcategory
        cannot :destroy, Subcategory
        cannot :update, Subcategory
        cannot :show_admin, Subcategory
        cannot :new, Category
        cannot :edit, Category
        cannot :destroy, Category
        cannot :update, Category
        cannot :show_admin, Category
        # cannot :index, Product
        # can :read, Subcategory
        # can :read, Category
      end
    end
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
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
