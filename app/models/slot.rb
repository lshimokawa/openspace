class Slot < ActiveRecord::Base
  belongs_to :agenda
  belongs_to :location
  has_one :session
  
  validates_presence_of :agenda, :location
end
