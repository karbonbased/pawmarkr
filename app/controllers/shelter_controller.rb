class ShelterController < ApplicationController

	def show
		# @dog = $petfinder.pet('31564331')

		@shelter = $petfinder.shelter(params[:id])
	end

end
