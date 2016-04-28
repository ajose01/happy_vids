class VideosController < ApplicationController

  def index
    @videos = Video.paginate(page: params[:page], per_page: 25)
    @table_columns = Video.column_names
  end

  def show
    @video = Video.find(params[:id])
    @video_users = @video.users.paginate(page: params[:page], per_page: 10)
  end

end
