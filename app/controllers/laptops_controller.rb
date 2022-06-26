class LaptopsController < ApplicationController


	def index
		@laptops = Laptop.all

	end

	def new
		@laptop = Laptop.new
	end

	def show
		@laptop = Laptop.find(params[:id])
	end

	def create
		@laptop = Laptop.new(laptop_params)
		if @laptop.save
			redirect_to "/laptops/show_laptop/#{@laptop.id}",notice: "created successfully."
		else
			render :new
		end

	end

	def edit
       @laptop = Laptop.find(params[:id])
	end

	def update
		@laptop = Laptop.find(params[:id])
		if @laptop.update(laptop_params)
			redirect_to "/laptops/show_laptop/#{@laptop.id}"
		else
			render :edit
		end
	end

	def delete
		@laptop = Laptop.find(params[:id])
		@laptop.destroy
		redirect_to root_path

	end


	private

	def laptop_params

		params.require(:laptop).permit(:name,:model,:configuration)
		
	end
end
