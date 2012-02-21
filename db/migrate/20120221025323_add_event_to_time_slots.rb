class AddEventToTimeSlots < ActiveRecord::Migration
  def change
    add_column :time_slots, :event_id, :integer
  end
end
