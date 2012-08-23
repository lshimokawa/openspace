class Vote < ActiveRecord::Base
  belongs_to :event
  belongs_to :session, :counter_cache => true
  belongs_to :user

end