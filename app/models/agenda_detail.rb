class AgendaDetail < ActiveRecord::Base
  belongs_to :event
  validates_presence_of :title, :starts, :ends
end
