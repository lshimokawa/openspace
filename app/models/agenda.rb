class Agenda< ActiveRecord::Base
  belongs_to :event
  has_many :slots
  validates_presence_of :title, :starts, :ends
end
