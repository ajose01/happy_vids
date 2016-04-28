class VideosController < ApplicationController

  def index
    @videos = Video.all
    @table_columns = Video.column_names
  end

  def show
    @video = Video.find(params[:id])
  end

end
