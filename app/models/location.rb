class Location < ActiveRecord::Base
  has_many :sessions
  has_many :time_slots
end
