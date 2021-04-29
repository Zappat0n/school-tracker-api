class AuthenticationsController < ApplicationController
  include AuthenticationsHelper
  include JwtHelper

  before_action :authorize_request, except: :create

  # POST /authentications
  def create
    @user = User.find_by_username(authentication_params[:username])
    if @user&.authenticate(authentication_params[:password])
      token = JsonWebToken.encode(user_id: @user.id)
      render json: { token: token, exp: time_string, username: @user.username }, status: :ok
    else
      render json: { errors: ['Unauthorized user. Username or password are wrong'] }, status: :unauthorized
    end
  end
end
