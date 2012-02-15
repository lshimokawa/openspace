class Event < ActiveRecord::Base
  has_many :sessions
end
