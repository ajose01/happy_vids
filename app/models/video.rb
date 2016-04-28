class Video < ActiveRecord::Base
  has_many :users_video
  has_many :users, through: :users_video
end
