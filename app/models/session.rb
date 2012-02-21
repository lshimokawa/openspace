class Session < ActiveRecord::Base
  SESSION_TYPES = ["charla", "conversatorio", "workshop"].freeze
  SESSION_STATUS = ["created", "accepted"].freeze

  belongs_to :user
  belongs_to :event  
  has_one :time_slot
  make_voteable
  validates_presence_of :title, :proposed_by
  validates_inclusion_of :session_type, :in => SESSION_TYPES, :message => 'El tipo no es valido'
  validates_inclusion_of :status, :in => SESSION_STATUS, :message => 'El estado no es valido'
  
end