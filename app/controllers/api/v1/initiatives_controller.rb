class Api::V1::InitiativesController < Api::V1::BaseController
 acts_as_token_authentication_handler_for User

  def index
    @projects = Project.where(user: current_user)
        # render :ok, json: Project.order(created_at: :desc)

  end

  def show
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    # authorize @project
    if @project.save
      render :show, status: :created
    else
      render_error
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :location, :category, :rewards, :amount_objective, :video, :image)
  end

  def render_error
    render json: {errors: @project.errors.full_messages}
  end

end

# Change the direction to model
