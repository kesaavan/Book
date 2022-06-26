class ConsumersController < ApplicationController

	

	def new
		@consumer = Consumer.new
	end

	def show
		@consumer = Consumer.find(params[:id])
	end

	def create
		@consumer = Consumer.new(consumer_params)
		if @consumer.save
			redirect_to "/consumer/show_consumer/#{@consumer.id}"
		else
			render :new
		end

	end

	private

	def consumer_params

		params.require(:consumer).permit(:name,:address)
		
	end
end
