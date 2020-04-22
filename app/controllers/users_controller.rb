class UsersController < ApplicationController
  include UsersHelper
  def create
    User.new(user_params)

    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def new
    @user = User.new
  end
end
