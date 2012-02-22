class CreateAgendaDetails < ActiveRecord::Migration
  def change
    create_table :agenda_details do |t|
      t.string :title
      t.time :starts
      t.time :ends

      t.timestamps
    end
    
    add_column :agenda_details, :event_id, :integer
  end
end
