class User < ActiveRecord::Base
  has_many :users_video
  has_many :videos, through: :users_video
end
