class AddMakeVoteableColumns < ActiveRecord::Migration
  def up
    add_column :users, :up_votes, :integer, :null => false, :default => 0
    add_column :sessions, :up_votes, :integer, :null => false, :default => 0
  end

  def down
  end
end
