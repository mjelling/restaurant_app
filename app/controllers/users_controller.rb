class UsersController < ApplicationController

  include SessionsHelper

  before_filter :authenticate_admin!, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    user = User.create user_params
    redirect_to admin_path
  end

  def log_in

  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :admin)
  end
   
end
