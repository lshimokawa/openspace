# Agenda de un Open Space
class Agenda< ActiveRecord::Base
  attr_accessible :title, :starts, :ends, :event
  belongs_to :event
  has_many :slots
  validates_presence_of :title, :starts, :ends, :event

  # SEO Friendly URLs
  def to_param
    "#{id}-#{title.parameterize}"
  end
  
  def starts_ends_title
    "#{starts.strftime('%H:%M')} - #{ends.strftime('%H:%M')}: #{title}"
  end

end