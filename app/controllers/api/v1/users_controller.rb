class Api::V1::UsersController < Api::V1::BaseController

  def create
  @user = User.create(user_params)
    if @user.save
      response = { message: 'User created successfully', auth_token: @user.authentication_token }
      render json: response, status: :created
     else
      render json: @user.errors, status: :bad
    end
  end



  private

  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :address, :credit_card_number)
  end
end
