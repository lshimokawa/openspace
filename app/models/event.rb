class Event < ActiveRecord::Base
  has_many :sessions
  has_many :locations
  
end
