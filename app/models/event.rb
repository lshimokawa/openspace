# Evento del Open Space
class Event < ActiveRecord::Base
  has_many :sessions
  has_many :locations
  has_many :agendas
  validates_presence_of :name
  
  # SEO Friendly URLs
  def to_param
    "#{id}-#{name.parameterize}"
  end

  def self.current_events
    Event.where("status != 'ended'")
  end
    
end
