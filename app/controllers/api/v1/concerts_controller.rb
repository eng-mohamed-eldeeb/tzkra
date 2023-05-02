class Api::V1::ConcertsController < ApplicationController

    # before_action :authenticate_company!
    
    def index
      concerts = current_company.venues.find(params[:venue_id]).concerts
      render json: concerts
    end
  
    def create
      concert = current_company.venues.find(params[:venue_id]).concerts.new(concert_params)
      if concert.save
        render json: concert, status: :created
      else
        render json: concert.errors, status: :unprocessable_entity
      end
    end
  
    def show
      concert = current_company.venues.find(params[:venue_id]).concerts.find(params[:id])
      render json: concert
    end
  
    def update
      concert = Concert.find(params[:id])
      if concert.update(concert_params)
        render json: concert
      else
        render json: concert.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      concert = Concert.find(params[:id])
      concert.destroy
    end
  
    private
  
    def concert_params
      params.require(:concert).permit(:singer_id, :venue_id, :date, :start_time, :end_time, :platinum_ticket_price, :gold_ticket_price, :siliver_ticket_price)
    end
  end
  