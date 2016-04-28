class DashboardsController < ApplicationController

  def index
    @video_counts = Video.user_counts
  end

end
