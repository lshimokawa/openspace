class User < ActiveRecord::Base
  ROLES = %w[admin facilitator assistant].freeze
  has_many :sessions
  make_voter # los usuarios pueden votar por sesiones
  validates_inclusion_of :role, :in => ROLES, :message => 'El estado no es valido'
    
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.nickname = auth["info"]["nickname"]
    end
  end
  
end