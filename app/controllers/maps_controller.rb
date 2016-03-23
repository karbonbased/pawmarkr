class MapsController < ApplicationController

	def index
		@map = Map.all
	end
end
