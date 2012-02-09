class Session < ActiveRecord::Base
  belongs_to :user
  make_voteable
  validates_presence_of :title, :description
end
