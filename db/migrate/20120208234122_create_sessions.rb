class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :title
      t.string :description
      t.integer :status

      t.timestamps
    end
  end
end
