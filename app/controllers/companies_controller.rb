class CompaniesController < ApplicationController
	 def show
		@company = Company.find(company['id'])
		if @company 
			render :show
		else
			flash[:warning] = "that company doesn't exist"
			redirect_to company_path
		end
	 end
	
	def index
		@company = Company.all
	end

	def new
		@company = Company.new
	end

	def create
		company = Company.new(params.require(:company).permit(:name, :description, :keywords))
		if company.save
			redirect_to new_company_path
		end
	end
end
