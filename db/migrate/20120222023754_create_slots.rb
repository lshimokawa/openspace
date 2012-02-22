class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.references :agenda_detail
      t.references :location

      t.timestamps
    end
  end
end
