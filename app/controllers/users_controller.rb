class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def api_show
    @posts = User.find(params[:id]).posts
    render json: { data: @posts }, status: :ok
  end
end
