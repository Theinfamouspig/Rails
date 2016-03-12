class CommentsController < ApplicationController
  def create
    @comment = Comment.new(commentParams)
    @comment.article_id = params[:article_id]

    flash.notice = "Comment added by '#{@comment.author_name}'!"
    @comment.save
    redirect_to article_path(@comment.article)

  end

  def commentParams
    params.require(:comment).permit(:author_name, :body)
  end

end
