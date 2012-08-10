# Slot de un Open Space, es usado para armar la agenda
class Slot < ActiveRecord::Base
  belongs_to :agenda
  belongs_to :location
  belongs_to :session
  
  validates_presence_of :agenda, :location
  
  def description
    text = location.name
    text << " - #{session.title}" unless session.nil?
    text
  end
  
end
