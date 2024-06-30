class JewelPolicy < ApplicationPolicy
  def index? = true

  def new? = user.admin?

  def create? = new?

  def show? = true

  def edit? = user.admin?

  def update? = edit?

  def destroy? = edit?

  class Scope < ApplicationPolicy::Scope
    def resolve
      scope.all
    end
  end
end
