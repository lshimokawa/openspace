class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :title
      t.string :proposed_by
      t.string :session_type
      t.text :description
      t.string :status, default: 'created'
      t.datetime :starting_at
      t.datetime :ending_at

      t.timestamps
    end
  end
end
