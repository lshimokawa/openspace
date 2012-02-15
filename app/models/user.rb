class User < ActiveRecord::Base
  has_many :sessions
  make_voter # Los usuarios pueden votar por sesiones
  
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.nickname = auth["info"]["nickname"]
    end
  end
  
end