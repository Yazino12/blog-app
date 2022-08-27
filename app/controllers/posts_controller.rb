class PostsController < ApplicationController
  load_and_authorize_resource

  def index
    @user = User.find(params[:user_id])
    @posts = Post.where(author_id: @user.id).all
  end

  def show
    @post = Post.find(params[:id])
    @user = @post.author
    @comments = @post.comments.includes([:author])
  end

  def new
    @post = Post.new
  end

  def create
    @post = User.find_by_id(params[:user_id]).posts.new(post_params)
    @post.comment_counter = 0
    @post.like_counter = 0

    respond_to do |format|
      if @post.save
        format.html { redirect_to "/users/#{params[:user_id]}/posts/", notice: 'Post was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    post = Post.find(params[:id])
    user = User.find(post.author_id)
    user.post_counter -= 1
    post.destroy
    user.save
    flash[:success] = 'You have deleted this post!'
    redirect_to user_path(current_user.id)
  end

  def api_show
    @post = Post.find(params[:post_id])
    @comments = @post.comments
    render json: { data: @comments }, status: :ok
  end

  def post_params
    params.require(:post).permit(:title, :text).merge!(author_id: current_user.id)
  end
end
