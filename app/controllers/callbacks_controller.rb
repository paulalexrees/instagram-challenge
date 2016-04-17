require 'instagram'

class CallbacksController < Devise::OmniauthCallbacksController

  # def connect
  #   binding.pry
  #   redirect_to Instagram.authorize_url(:redirect_uri => "http://localhost:3000/users/auth/instagram/callback")
  # end


  def instagram
    puts "fucking Grwkbgjbgkjbskhjbsg "


    response = Instagram.get_access_token(params[:code], redirect_uri: "http://localhost:3000/users/auth/instagram/callback")
    p response
    session[:access_token] = response.access_token



    @user = User.from_omniauth(request.env["omniauth.auth"])
    set_flash_message(:notice, :success, :kind => "Instagram") if is_navigational_format?
    sign_in_and_redirect @user
  end

end
