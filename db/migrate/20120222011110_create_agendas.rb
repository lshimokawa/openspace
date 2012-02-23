class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.string :title
      t.time :starts
      t.time :ends

      t.timestamps
    end
    
    add_column :agendas, :event_id, :integer
  end
end
