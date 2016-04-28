class UsersController < ApplicationController

  def index
    @users = User.all
    @table_columns = User.column_names
  end

  def show
    @user = User.find(params[:id])
  end

end
