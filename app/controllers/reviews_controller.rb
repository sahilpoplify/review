class ReviewsController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]
    include ReviewsHelper

# before_action :authenticate_user!, only: [:edit],  current_user.id == @review.user_id


    def index
        @reviews = Review.all
        @total_reviews = @reviews.count
    end


    def show
        @review = Review.find(params[:id])
        @comment = Comment.new
        @comment.review_id = @review.id

    end

    def user_show
        @user_id = current_user.id
    end


    def new
        @review = Review.new
    end


    def create
        @review = Review.new(review_params)
        @review.save

        redirect_to review_path(@review)
    end

    def edit
        @review = Review.find(params[:id])
        unless current_user.id == @review.user_id
            redirect_back fallback_location: root_path, notice: 'User is not owner'
          end
        
         
    end


    def update
        @review = Review.find(params[:id])
        @review.update(review_params)

        redirect_to review_path(@review)
    end
   
end