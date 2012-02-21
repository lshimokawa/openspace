class TimeSlot < ActiveRecord::Base
  validates_presence_of :event, :starts, :ends
  belongs_to :event
  belongs_to :location
  #belongs_to :session
end
