class Api::V1::SessionsController < Api::V1::BaseController
 def create
   user = User.find_by_email(params[:user][:email])

   if user && user.valid_password?(params[:user][:password])
     # @current_user = user
     response = { message: 'User sign in successfully', auth_token: user.authentication_token }
    render json: response
   else
     render json: { errors: { 'email or password' => ['is invalid'] } }, status: :bad_request
   end
 end
end
