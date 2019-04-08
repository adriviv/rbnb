class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: :home

  acts_as_token_authentication_handler_for User
    def home
    end
end
