class Api::V1::InitiativesController < Api::V1::BaseController

  def index
    @projects = Project.where(user: current_user)
  end

  def show
  end

  def create
  end


end

# Change the direction to model
