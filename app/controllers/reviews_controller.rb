class ReviewsController < ApplicationController

	

	def new
		@review = Review.new
	end

	def show
		@review = Review.find(params[:id])
	end

	def create
		@review = Review.new(review_params)
		if @review.save
			redirect_to "/review/show_review/#{@review.id}"
		else
			render :new
		end

	end

	private

	def review_params

		params.require(:review).permit(:title,:comment)
		
	end
end
