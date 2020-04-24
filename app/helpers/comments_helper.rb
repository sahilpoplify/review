module CommentsHelper
    def comment_params
        params.require(:comment).permit(:comment_body)
    end
end
