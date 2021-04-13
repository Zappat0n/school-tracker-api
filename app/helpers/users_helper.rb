module UsersHelper
  def user_params
    params.require(:user).permit(:email, :password)
  end

  def generate_refresh_token
    loop do
      # generate a random token string and return it,
      # unless there is already another token with the same string
      token = SecureRandom.hex(32)
      break token unless Doorkeeper::AccessToken.exists?(refresh_token: token)
    end
  end

  def render_user(user, access_token)
    render(json: {
             user: {
               id: user.id,
               email: user.email,
               access_token: access_token.token,
               token_type: 'bearer',
               expires_in: access_token.expires_in,
               refresh_token: access_token.refresh_token,
               created_at: access_token.created_at.to_time.to_i
             }
           })
  end
end
