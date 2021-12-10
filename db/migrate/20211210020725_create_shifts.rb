class CreateShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :shifts do |t|
      t.integer :user_id
      t.time :start_time
      t.time :finish_time
      t.date :date

      t.timestamps
    end
  end
end
