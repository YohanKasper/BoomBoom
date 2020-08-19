class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def dashboard
    @user = current_user
  end
end
