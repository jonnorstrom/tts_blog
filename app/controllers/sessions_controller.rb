class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.find_by(username: session_params[:username])
    if user
      if user.authenticate(session_params[:password])
        session[:user_id] = user.id
        redirect_to user_path(user)
      else
        redirect_to new_session_path
      end
    else
      redirect_to new_session_path
    end
  end

  private

  def session_params
    params.require(:user).permit(:username, :password)
  end

end
