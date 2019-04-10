class Api::V1::PledgesController < Api::V1::BaseController
acts_as_token_authentication_handler_for User, except: [ :index ]

  def index




    # @pledge.project = Project.find(params[:project_id]).all
#
     # @pledges = Pledge.where(project_id: params[:project_id])
     @pledges = Pledge.where(project_id: params[:project_id])

     @total = @pledges.inject(0){|sum,e| sum + e.amount }
    #  pledges.each do |pledge|
    #   pledge += pledge
    #   pledge << @pledge
    # end

     # @pledges = []
     # @pledges.each do |pledge|
     #  @pledges << pledge
     #  end


  end





  def create
    @project = Project.find(params[:project_id])


    @pledge = Pledge.new(pledge_params)
    @pledge.user = current_user
    @pledge.project = Project.find(params[:project_id])
    if @pledge.save
      render :index, status: :created
    else
       render_error
    end

  end

# def create
#     @item = Item.find(favorite_params[:item_id])
#     @user = @current_user
#     @favorite = Favorite.find_or_create_by(item_id: @item.id, user_id: @user.id)

#   end



  #   @project = Project.find(params[:id])
  #   #@pledge = Pledge.new(pledge_params)
  #   @pledge.user = current_user


  #   if @pledge.save
  #     render :index, status: :created
  #   else
  #     render_error
  #   end
  # end

  private


  def pledge_params
    params.require(:pledge).permit(:amount)
  end

  def render_error
    render json: {errors: @pledge.errors.full_messages}
  end

end
