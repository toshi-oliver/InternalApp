class ApplicationController < ActionController::Base
  #どの画面でもログインしているか確認するためにApplicationControllerにcurrent_userメソッドを記載
  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
end
