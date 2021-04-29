module AuthenticationsHelper
  def time_string
    time = Time.now + 24.hours.to_i
    time.strftime('%m-%d-%Y %H:%M')
  end
  def authentication_params
    params.require(:authentication).permit(:username, :password, :password_confirmation)
  end
end
