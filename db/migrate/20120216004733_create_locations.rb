class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.timestamps
    end
    
    add_column :sessions, :location_id, :integer
    add_column :locations, :event_id, :integer
  end
end
