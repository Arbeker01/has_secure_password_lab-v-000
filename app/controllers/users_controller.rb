class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id  
      redirect_to controller: 'welcome', action: 'home'
    else
      render 'new'
    end
  end
  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
 
