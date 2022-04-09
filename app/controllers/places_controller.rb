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
    place = Place.new(
      name: params[:name],
      address: params[:address]
    )
    if place.save
      render json: place.as_json
    else
      render json: {errors: place.errors.full_messages}, status: 422
    end
  end

  def update
    place = Place.find(params[:id])
    place.name = params[:name] || place.name
    place.address = params[:address] || place.address
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