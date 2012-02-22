class Event < ActiveRecord::Base
  has_many :sessions
  has_many :locations
  has_many :agenda_details
  validates_presence_of :name
    
end
