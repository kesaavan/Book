class JournalsController < ApplicationController

	def index

	end

	def new
		@product = ProductDetail.new
	end

	def show 
		@product = ProductDetail.find_by(id: params[:id])
	end

	def create
		@product = ProductDetail.new(product_params)
		if @product.save
			redirect_to url: "journals/show_journal/#{@product.id}"
		else
			render :new
		end
	end


	private

	def product_params
		params.require(:product_detail).permit(:name,:code,:description)
	end






end
