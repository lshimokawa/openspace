class CreateOpenSpaces < ActiveRecord::Migration
  def change
    create_table :open_spaces do |t|
      t.string :name

      t.timestamps
    end
  end
end
