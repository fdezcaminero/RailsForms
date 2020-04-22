class UsersController < ApplicationController
  include UsersHelper
  def create
    @user = User.create(user_params)
  end

  def new
    @user = User.new
  end
end
