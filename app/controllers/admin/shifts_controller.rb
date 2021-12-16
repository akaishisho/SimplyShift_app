class Admin::ShiftsController < ApplicationController
  before_action :authenticate_admin!
  
  def index
    @shifts = Shift.all
  end
  
end
