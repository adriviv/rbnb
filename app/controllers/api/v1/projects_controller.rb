class Api::V1::ProjectsController < Api::V1::BaseController

respond_to :json
  acts_as_token_authentication_handler_for User, except: [ :show, :index ]

  def index
  end

  def show
  end


end
