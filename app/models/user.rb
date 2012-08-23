# Usuario del Open Space
class User < ActiveRecord::Base
  attr_accessible :provider, :uid, :name, :nickname, :role
  ROLES = %w[admin assistant].freeze
  has_many :sessions
  validates_inclusion_of :role, :in => ROLES
  validates_presence_of :provider, :uid, :name, :nickname
    
  # OAuth para Facebook y Twitter
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.nickname = auth["info"]["nickname"]
      user.role = 'assistant'
    end
  end
  
  def admin?
    role == 'admin'
  end

  def assistant?
    role == 'assistant'
  end

  # Votar por una sesion en un evento
  def vote(event, session)
    # TODO pasar el 3 a un atributo del evento configurable
    if self.assistant? and self.votes_count(event) >= 3
      raise "Tienes un maximo de 3 votos"
    end
    Vote.create(event: event, session: session, user: self)
  end

  # Numero de votos que ha realizado el usuario en el evento
  def votes_count(event)
    Vote.where(event_id: event.id, user_id: self.id).count
  end

  def promote_to_admin
    self.role = 'admin'
    self
  end
  
end