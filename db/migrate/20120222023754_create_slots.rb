class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.references :agenda
      t.references :location
      t.references :session

      t.timestamps
    end
  end
end
