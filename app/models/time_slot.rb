class TimeSlot < ActiveRecord::Base
  belongs_to :event
  belongs_to :location
  #belongs_to :session
  validates_presence_of :event, :starts, :ends, :location
end
