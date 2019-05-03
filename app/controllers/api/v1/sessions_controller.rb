class Api::V1::SessionsController < Api::V1::BaseController
 def create
   user = User.find_by_email(params[:user][:email])
   password = User.find_by_encrypted_password(params[:user][:encrypted_password])

   if  password && user
     # @current_user = user
     response = { message: 'User sign in successfully', auth_token: user.authentication_token }
     # 1 Add the name and the last name dans la response --
     # 2 Vuejs/ Login store local data name and last name
     # 3) dans la navBar tu get storage ces infos
    render json: response
   else
     render json: { errors: { 'email or password' => ['is invalid'] } }, status: :bad_request
   end
 end
end
