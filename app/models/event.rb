class Event < ActiveRecord::Base
  has_many :sessions
  has_many :locations
  validates_presence_of :name
  
end
