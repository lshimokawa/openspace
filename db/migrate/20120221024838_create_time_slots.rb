class CreateTimeSlots < ActiveRecord::Migration
  def change
    create_table :time_slots do |t|

      t.timestamps
    end
  end
end
