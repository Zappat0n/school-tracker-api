class UsersController < ApplicationController
  include UsersHelper

  skip_before_action :doorkeeper_authorize!, only: %i[create]

  def create
    user = User.new(email: user_params[:email], password: user_params[:password])

    client_app = Doorkeeper::Application.find_by(uid: params[:client_id])

    return render(json: { error: 'Invalid client ID' }, status: 403) unless client_app

    if user.save
      access_token = Doorkeeper::AccessToken.create(
        resource_owner_id: user.id,
        application_id: client_app.id,
        refresh_token: generate_refresh_token,
        expires_in: Doorkeeper.configuration.access_token_expires_in.to_i,
        scopes: ''
      )

      render_user(user, access_token)
    else
      render(json: { error: user.errors.full_messages }, status: 422)
    end
  end
end
