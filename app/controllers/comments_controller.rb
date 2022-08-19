class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @post = Post.find_by_id(params[:post_id])
  end

  def create
    @post = Post.find_by_id(params[:post_id])
    @comment = current_user.comments.new(post_id: @post.id, author_id: current_user.id, text: comment_params)

    respond_to do |format|
      if @comment.save
        format.html do
          redirect_to "/users/#{@post.author.id}/posts/#{@post.id}", notice: 'Comment was successfully created.'
        end
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def comment_params
    params.require(:comment).permit(:text)[:text]
  end
end
