class DogsController < ApplicationController

	def index
		puts "=============="
		p $petfinder
		puts "=============="
		@pets = $petfinder.find_pets('dog', '11211', count:20) #add option like this.... age:'baby'
		puts @pets.count
		@pets#picture
		puts "***************************"
		puts "****    @pets is   ********"
		p @pets
		puts "***************************"

		@pets.each do |dog|
			Dog.find_or_create_by(name:dog.name, 
				age:dog.age, 
				gender:dog.sex, 
				contact:dog.contact,
				breeds: dog.breeds.each do |breed|
					breed
				end

				)


		end

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
		@pets = $petfinder.find_pets('dog', '11211', count:20)
		
	end

	def shelter
		@shelter = $petfinder.shelter(params[:id])

	end

	private

	def dog_params
		params.require(:dog).permit(:name, :id, :shelter_id)
	end
	
end
