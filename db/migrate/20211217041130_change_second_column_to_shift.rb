class ChangeSecondColumnToShift < ActiveRecord::Migration[5.2]

  # 変更内容
  def up
    change_column :shifts, :start_time, :time
    change_column :shifts, :finish_time, :time
  end

  # 変更前の状態
  def down
    change_column :shifts, :start_time, :datetime
    change_column :shifts, :finish_time, :datetime
  end

end
