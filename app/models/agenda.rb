# Agenda de un Open Space
class Agenda< ActiveRecord::Base
  belongs_to :event
  has_many :slots
  validates_presence_of :title, :starts, :ends
  
  def starts_ends_title
    "#{starts.strftime('%H:%M')} - #{ends.strftime('%H:%M')}: #{title}"
  end

end