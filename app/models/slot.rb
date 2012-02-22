class Slot < ActiveRecord::Base
  belongs_to :agenda_detail
  belongs_to :location
  has_one :session
  
  validates_presence_of :agenda_detail, :location
end
