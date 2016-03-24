class CoordinatesController < ApplicationController

	def index
	@coordinates = Coordinate.all
@geojson = Array.new

@coordinates.each do |place|
  @geojson << {
    type: 'Feature',
    geometry: {
      type: 'Point',
      coordinates: [place.longitude, happy_hour.latitude]
    },
    properties: {
      name: place.name,
      address: place.street,
      :'marker-color' => '#00607d',
      :'marker-symbol' => 'circle',
      :'marker-size' => 'medium'
    }
  }
end
end
