class DogsController < ApplicationController

	def index
		puts "=============="
		p $petfinder
		puts "=============="
		@pets = $petfinder.find_pets('dog', '11211', age:'baby', count:20)
		@pets.count
		@pets#picture
		puts "***************************"
		puts "****    @pets is   ********"
		p @pets
		puts "***************************"



	end

	def show
		@dog = $petfinder.pet(params[:id])

		@bla = @dog.shelter_id
puts "==============="
		puts @shelter_id
		puts @shelter_id.class
puts "==============="
		puts "==============="
		p @dog
		puts @dog.class
		puts "==============="

		# @breeds = $petfinder.breed('dog')

	end

	def test
		# @response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')
		# @response = HTTParty.get('http://rubygems.org/api/v1/versions/httparty.json')
		# puts "==============="
		# puts @response
		# puts "==============="
		@animal = Animal.find(1)
	end

	def shelter
		@shelter = $petfinder.shelter(params[:id])

	end

	private

	def dog_params
		params.require(:dog).permit(:name, :id, :shelter_id)
	end
	
end
