class Slot < ActiveRecord::Base
  belongs_to :agenda
  belongs_to :location
  belongs_to :session
  
  validates_presence_of :agenda, :location
  
  def description
    #TODO i18n
    return "#{location.name} - #{session.title}" unless session.nil? or location.nil? 
    return location.name  if session.nil?
    return "Sin asignar" if session.nil? and location.nil?
  end
  
end
