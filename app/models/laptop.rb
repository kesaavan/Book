class Laptop < ApplicationRecord
	validates :name, :model, :configuration, presence:true 
	validates :name, length: {minimum:2 , maximium:50}
	validates :configuration, length: {minimum:10, maximum:1000}
end
