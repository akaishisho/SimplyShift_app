class Public::ShiftsController < ApplicationController
  before_action :authenticate_user!

  def index
    @shifts = Shift.all
    @shift = Shift.new
  end

  def new
    @shift = Shift.new
  end

  def create
    Shift.create(shift_parameter)
    redirect_to shifts_path
  end

  def edit
    @shift = Shift.find(params[:id])
  end

  def update
    @shift = Shift.find(params[:id])
    if @shift.update(shift_parameter)
      redirect_to shifts_path,notice: "編集しました"
    else
      render 'edit'
    end
  end

  private

  def shift_parameter
    params.require(:shift).permit(:start_time, :finish_time, :date, :attendance)
  end

end
