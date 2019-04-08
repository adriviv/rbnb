class Api::V1::ProjectsController < Api::V1::BaseController
acts_as_token_authentication_handler_for User, except: [ :show, :index ]
# respond_to :json

before_action :set_project, only: [:show]

  def index
    @projects = Project.all
  end

  def show
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end


end
