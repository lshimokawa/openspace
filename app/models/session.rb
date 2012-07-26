# Sesión propuesta de un Open Space. Los asistentes votan por las sesiones en el marketplace.
class Session < ActiveRecord::Base
  SESSION_TYPES = ["charla", "conversatorio", "workshop"].freeze
  SESSION_STATUS = ["created", "accepted"].freeze

  belongs_to :user
  belongs_to :event  
  has_many :slots
  make_voteable
  validates_presence_of :title, :proposed_by, :user
  validates_inclusion_of :session_type, :in => SESSION_TYPES, :message => 'El tipo no es valido'
  validates_inclusion_of :status, :in => SESSION_STATUS, :message => 'El estado no es valido'
  
  # SEO Friendly URLs
  def to_param
    "#{id}-#{title.parameterize}"
  end
  
end