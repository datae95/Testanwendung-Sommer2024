class ApplicationController < ActionController::Base
  include Pundit::Authorization
  after_action :verify_pundit_authorization

  before_action :authenticate_user!

  private

  def verify_pundit_authorization
    if action_name == "index"
      verify_policy_scoped
    else
      verify_authorized
    end
  end
end
