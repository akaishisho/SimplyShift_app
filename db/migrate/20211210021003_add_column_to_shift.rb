class AddColumnToShift < ActiveRecord::Migration[5.2]
  def change
    add_column :shifts, :attendance, :boolean, default: false, null: false
  end
end
