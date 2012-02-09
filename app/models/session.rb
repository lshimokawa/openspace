class Session < ActiveRecord::Base
  belongs_to :user
  make_voteable
end
