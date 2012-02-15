class Session < ActiveRecord::Base
  belongs_to :user, :event
  make_voteable
  validates_presence_of :title, :description
end
