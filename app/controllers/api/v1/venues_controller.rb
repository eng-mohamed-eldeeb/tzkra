class Api::V1::VenuesController < ApplicationController
    before_action :authenticate_company!
  
    def index
      venues = current_company.venues
      render json: venues
    end
  
    def show
      venue = current_company.venues.find(params[:id])
      render json: venue
    end
  
    def create
      venue = current_company.venues.build(venue_params)
  
      if venue.save
        render json: venue, status: :created
      else
        render json: { errors: venue.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def update
      venue = current_company.venues.find(params[:id])
  
      if venue.update(venue_params)
        render json: venue
      else
        render json: { errors: venue.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def destroy
      venue = current_company.venues.find(params[:id])
      venue.destroy
      head :no_content
    end
  
    private
  
    def venue_params
      params.require(:venue).permit(:location, :platinaum_seat_count, :img_url, :name, :gold_seats_count, :siliver_seats_count)
    end
  end
  