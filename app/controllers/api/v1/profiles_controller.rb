class Api::V1::ProfilesController < Api::V1::BaseController
acts_as_token_authentication_handler_for User

  def show
  render json: current_user
  end
end
