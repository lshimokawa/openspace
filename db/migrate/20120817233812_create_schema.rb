class CreateSchema < ActiveRecord::Migration
  
  def up
    create_table "agendas", :force => true do |t|
      t.string   "title", :null => false
      t.time     "starts", :null => false
      t.time     "ends", :null => false
      t.integer  "event_id", :null => false
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end

    create_table "events", :force => true do |t|
      t.string   "name", :null => false
      t.text     "description"
      t.datetime "starting_at"
      t.datetime "ending_at"
      t.string   "where"
      t.string   "status", :default => "created"
      t.string   "website"
      t.string   "hashtag"
      t.float    "latitude"
      t.float    "longitude"
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end

    create_table "locations", :force => true do |t|
      t.string   "name", :null => false
      t.string   "description"
      t.integer  "event_id", :null => false
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end

    create_table "sessions", :force => true do |t|
      t.string   "title", :null => false
      t.string   "proposed_by"
      t.string   "session_type"
      t.text     "description"
      t.string   "status", :default => "created"
      t.datetime "starting_at"
      t.datetime "ending_at"
      t.integer  "user_id"
      t.integer  "event_id"
      t.integer  "location_id"
      t.integer  "votes_count", :default => 0, :null => false
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end

    create_table "slots", :force => true do |t|
      t.integer  "agenda_id", :null => false
      t.integer  "location_id"
      t.integer  "session_id"
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end

    create_table "users", :force => true do |t|
      t.string   "provider", :null => false
      t.string   "uid", :null => false
      t.string   "name", :null => false
      t.string   "nickname", :null => false
      t.string   "role"
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end

    create_table "votes", :force => true do |t|
      t.integer  "session_id"
      t.integer  "user_id"
      t.datetime "created_at",    :null => false
      t.datetime "updated_at",    :null => false
    end
  end

  def down
  end

end