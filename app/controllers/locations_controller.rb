class LocationsController < ApplicationController

    def index
        locations = Location.all
        render json: LocationSerializer.new(locations, include: [:articles])
    end
end
