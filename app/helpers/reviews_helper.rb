module ReviewsHelper
    def review_params
    params.require(:review).permit(:review_about, :review_body, :user_id)
    end
end
