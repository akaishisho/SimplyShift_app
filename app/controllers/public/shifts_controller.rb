class Public::ShiftsController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_shift,only: [:edit]

  def index
    @user = current_user
    @shifts = current_user.shifts
    @new_shifts = current_user.shifts.page(params[:page]).per(5).order("date DESC")
    @shift = Shift.new
    @deadline = Date.today.end_of_month #- 10
  end

  def new
    @shift = Shift.new
  end

  def create
    @shift = Shift.new(shift_params)
    @shift.user_id = current_user.id
    if @shift.save
      redirect_to shifts_path
    else
      @new_shifts = current_user.shifts.page(params[:page]).per(5).order("date DESC")
      @deadline = Date.today.end_of_month #- 10
      @shifts = current_user.shifts
      render "index"
    end
  end

  def edit
    @shift = Shift.find(params[:id])
    @shifts = current_user.shifts
    @new_shifts = current_user.shifts.page(params[:page]).per(5).order("date DESC")
    @deadline = Date.today.end_of_month - 10
  end

  def update
    @shift = Shift.find(params[:id])
    if @shift.update(shift_params)
      redirect_to shifts_path,notice: "編集しました"
    else
      render 'edit'
    end
  end

  def destroy
    # --ここから--(非同期処理のため取得)
    @new_shifts = current_user.shifts.page(params[:page]).per(5).order("date DESC")
    @deadline = Date.today.end_of_month - 10
    # --ここまで--(非同期処理のため取得)
    @shift = Shift.find(params[:id])
    @shift.destroy
  end

  def correct_shift
          @shift = Shift.find(params[:id])
      unless @shift.user.id == current_user.id
        redirect_to shifts_path
      end
  end

  private

  def shift_params
    params.require(:shift).permit(:start_time, :finish_time, :date, :attendance)
  end

end
