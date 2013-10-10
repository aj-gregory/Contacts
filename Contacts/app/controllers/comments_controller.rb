class CommentsController < ApplicationController
  def create
    @comment = Comment.new({:user_id => params[:user_id],
                            :contact_id => params[:contact_id],
                            :body => params[:body]})
    if @comment.save
      render :json => @comment
    else
      render :json => @comment.errors
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      head :ok
    end
  end
end