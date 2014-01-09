class AdminUsersController < ApplicationController
  before_filter :is_admin?
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to admin_user_path(@user)
    end
  end

  def user_params
    params.require(:user).permit(:email, :password, :ban, :is_admin)
  end
end
