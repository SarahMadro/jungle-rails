class LogoutController < ApplicationController

  def show
  session[:user_id] = nil
  redirect_to '/login'
  end
end
