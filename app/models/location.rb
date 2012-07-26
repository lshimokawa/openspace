# Ambientes físico de un Open Space, es usado para armar la agenda. Las 
# sesiones se llevan a cabo en los ambientes.
class Location < ActiveRecord::Base
  has_many :sessions
  has_many :time_slots
end