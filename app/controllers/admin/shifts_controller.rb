class Admin::ShiftsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @shifts = Shift.all

    respond_to do |format|
      format.html
      format.xlsx do
        response.headers['Content-Disposition'] = "attachment; filename=#{Date.today}.xlsx"
      end
    end
  end

end
