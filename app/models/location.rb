# Ambientes físico de un Open Space, es usado para armar la agenda. Las 
# sesiones se llevan a cabo en los ambientes.
class Location < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :sessions
  has_many :time_slots
  belongs_to :event

  validates_presence_of :name, :event
end