# Usuario del Open Space
class User < ActiveRecord::Base
  ROLES = %w[admin event_admin assistant guest].freeze
  has_many :sessions
  make_voter # los usuarios pueden votar por sesiones
  validates_inclusion_of :role, :in => ROLES
  validates_presence_of :provider, :uid, :name, :nickname
    
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
  
end