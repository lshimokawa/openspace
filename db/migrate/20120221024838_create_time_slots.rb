class CreateTimeSlots < ActiveRecord::Migration
  def change
    create_table :time_slots do |t|
      t.string :name
      t.time :starts
      t.time :ends
      t.timestamps
    end
    
    add_column :time_slots, :event_id, :integer
    add_column :time_slots, :location_id, :integer
    add_column :time_slots, :session_id, :integer
  end
end
