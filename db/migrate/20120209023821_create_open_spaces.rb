class CreateOpenSpaces < ActiveRecord::Migration
  def change
    create_table :open_spaces do |t|
      t.string :name
      t.text :description
      t.date :when
      t.string :where
      t.integer :status
      t.string :hashtag

      t.timestamps
    end
  end
end
