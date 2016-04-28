class Video < ActiveRecord::Base
  has_many :users_video
  has_many :users, through: :users_video

  def self.user_counts
    all.map{|video| {
      id: video.id,
      title: video.title,
      user_count: video.users.count
      }
    }
  end

end
