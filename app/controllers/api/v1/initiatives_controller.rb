class Api::V1::InitiativesController < Api::V1::BaseController
 acts_as_token_authentication_handler_for User

  def index
    @projects = Project.where(user: current_user)
        # render :ok, json: Project.order(created_at: :desc)

  end

  def show
  end

  def create
  end


end

# Change the direction to model
