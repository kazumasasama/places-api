class PlacesController < ApplicationController

  def index
    places = Place.all
    render json: places.as_json
  end

  def show
    place = Place.find(params[:id])
    render json: place.as_json
  end

  def create
    geocode = Geocoder.search(params[:address]).first.coordinates
    place = Place.new(
      name: params[:name],
      address: params[:address],
      latitude: geocode[0].to_f,
      longitude: geocode[1].to_f
    )
    if place.save
      render json: place.as_json
    else
      render json: {errors: place.errors.full_messages}, status: 422
    end
  end

  def update
    geocode = Geocoder.search(params[:address]).first.coordinates

    place = Place.find(params[:id])
    place.name = params[:name] || place.name
    place.address = params[:address] || place.address
    if place.address == params[:address]
      place.latitude = geocode[0].to_f
      place.longitude = geocode[1].to_f
    end
    if place.save
      render json: place.as_json
    else
      render json: {errors: place.errors.full_messages}, status: 422
    end
  end

  def destroy
    place = Place.find(params[:id])
    if place.delete
      render json: place.as_json
    else
      render json: {errors: place.errors.full_messages}, status: 422
    end
  end
end
