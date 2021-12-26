class Admin::ShiftsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @shifts = Shift.all
    # --ここから--(メンターさん追記)
    @data = {}
    @shifts.each do |shift|
      if @data[shift.date.to_s.to_sym] == nil
        @data[shift.date.to_s.to_sym] = []
      end
      @data[shift.date.to_s.to_sym] << shift
    end
    # --ここまで--
    respond_to do |format|
      format.html
      format.xlsx do
        response.headers['Content-Disposition'] = "attachment; filename=#{Date.today}.xlsx"
      end
    end
  end
end
