class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @like = current_user.likes.new(author_id: current_user.id, post_id: @post.id)

    respond_to do |format|
      if @like.save
        format.html do
          redirect_to user_post_path(@post.author_id, @post.id), notice: 'Like was successfully created.'
        end
      else
        format.html { redirect_to user_post_path(@post.author_id, @post.id), notice: 'Like not successfull.' }
      end
    end
  end
end
