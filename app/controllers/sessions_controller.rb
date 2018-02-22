class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    existing_username = params[:user][:username]
    existing_password = params[:user][:password_digest]

    user = User.find_by(username: existing_username)
    if user
      if user.password == existing_password
        session[:user_id] = user.id
        redirect_to user_path(user)
      else
        redirect_to new_session_path
      end
    else
      redirect_to new_session_path
    end
  end

end
