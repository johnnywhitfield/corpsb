class ReviewsController < ApplicationController
	 def show
		@review = Review.find(company['id'])
		if @review 
			render :show
		else
			flash[:warning] = "that company doesn't exist"
			redirect_to review_path
		end
	 end
	
	def index
		@review = Review.all
	end

	def new
		@review = Review.new
	end

	def create
		review = Review.new(params.require(:review_text).permit(:category, :ratings))
		if review.save
			redirect_to new_review_path
		end
	end
end