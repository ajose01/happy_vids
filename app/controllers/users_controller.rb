class UsersController < ApplicationController

  def index
    @users = User.paginate(page: params[:page], per_page: 25)
    @table_columns = User.column_names
  end

  def show
    @user = User.find(params[:id])
    @user_videos = @user.videos.paginate(page: params[:page], per_page: 10)
  end

end
