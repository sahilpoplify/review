class CommentsController < ApplicationController
include CommentsHelper
before_action :authenticate_user!
    def create
        @comment = Comment.new(comment_params)
        @comment.review_id = params[:review_id]
        @comment.save
      
        redirect_to review_path(@comment.review)
      end

end
