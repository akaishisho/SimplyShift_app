class Public::ShiftsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @shifts = current_user.shifts
    @new_shifts = current_user.shifts.page(params[:page]).per(5).reverse_order
    @shift = Shift.new
    @deadline = Date.today.end_of_month #- 10
  end

  def new
    @shift = Shift.new
  end

  def create
    @shift = Shift.new(shift_params)
    @shift.user_id = current_user.id
    @shift.save
    redirect_to shifts_path
  end

  def edit
    @shift = Shift.find(params[:id])
    @shifts = current_user.shifts
    @new_shifts = current_user.shifts.page(params[:page]).per(5).reverse_order
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
    @new_shifts = current_user.shifts.page(params[:page]).per(5).reverse_order
    @deadline = Date.today.end_of_month #- 10
    # --ここまで--(非同期処理のため取得)
    @shift = Shift.find(params[:id])
    @shift.destroy
  end

  private

  def shift_params
    params.require(:shift).permit(:start_time, :finish_time, :date, :attendance)
  end

end
