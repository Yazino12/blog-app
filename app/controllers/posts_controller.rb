class PostsController < ApplicationController
  def index
    @user = current_user
    @posts = @user.posts.includes(:comments)
  end

  def show
    @user = current_user
    @post = Post.find_by_id(params[:id]) if @user.post_counter.positive?
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    @post.comment_counter = 0
    @post.like_counter = 0

    respond_to do |format|
      if @post.save
        format.html { redirect_to "/users/#{@post.author.id}/posts/", notice: 'Post was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
