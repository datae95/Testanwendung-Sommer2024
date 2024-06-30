class JewelPolicy < ApplicationPolicy
  def index? = true

  def new? = true

  def create? = new?

  def show? = true

  def edit? = show?

  def update? = edit?

  def destroy? = edit?

  class Scope < ApplicationPolicy::Scope
    def resolve
      scope.all
    end
  end
end
