class CreateLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :logs do |t|
      t.integer :jump_number
      t.date :date
      t.string :location
      t.string :aircraft
      t.string :equipment
      t.float :altitude
      t.float :delay_time
      t.float :total_time
      t.string :maneuver
      t.text :description
      t.string :signature

      t.timestamps
    end
  end
end
