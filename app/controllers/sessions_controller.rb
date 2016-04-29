class SessionsController < ApplicationController
  def create
    @user = User.find_by(name: params[:user][:name])
    if @user.authenticate(params[:user][:password])

      session[:user_id] = @user.id
      redirect_to users_new_path
    else
      redirect_to users_new_path
    end

  end
end
