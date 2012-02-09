class User < ActiveRecord::Base
  has_many :sessions
  make_voter
  
  def self.create_with_omniauth(auth)
    logger.debug auth
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
  end
  
end