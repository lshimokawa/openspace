class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
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
