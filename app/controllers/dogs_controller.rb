class DogsController < ApplicationController

	def index
		puts "=============="
		p $petfinder
		puts "=============="
		@pets = $petfinder.find_pets('dog', '11211', count:10)
		@pets.count


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
		@dog = $petfinder.pet('31564331')
		respond_to do |format|
    		format.html
    		format.json{
     	 	render :json => @dog.to_json
  		  }
  		end
	end

	def shelter
		@dog = $petfinder.pet(params[:id])
		@shelter = @dog.shelter_id

	end

	private

	def dog_params
		params.require(:dog).permit(:name, :id, :shelter_id)
	end
	
end
