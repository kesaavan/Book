class ShopsController < ApplicationController

	

	def new
		@shop = Shop.new
	end

	def show
		@shop = Shop.find(params[:id])
	end

	def create
		@shop = Shop.new(shop_params)
		if @shop.save
			redirect_to "/shop/show_shop/#{@shop.id}"
		else
			render :new
		end

	end

	private

	def shop_params

		params.require(:shop).permit(:name,:description)
		
	end
end
