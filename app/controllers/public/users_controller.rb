class Public::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_current_user

  def unsubscribe
  end

  def withdraw
    @user.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end

  private

  def set_current_user
    @user = current_user
  end

end
