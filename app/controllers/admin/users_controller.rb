class Admin::UsersController < ApplicationController
  
  def index
    @users = User.page(params[:page]).reverse_order
  end
  
end
