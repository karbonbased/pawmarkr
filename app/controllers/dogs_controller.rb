class DogsController < ApplicationController

	def index
		puts "=============="
		p $petfinder
		puts "=============="
		@pets = $petfinder.find_pets('dog', '11211', count:10)
		@pets.count
		puts "====@pets is=========="
		puts @pets.to_xml
		puts "=============="
	end

	def show
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
	
end
