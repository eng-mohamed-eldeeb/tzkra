class Api::V1::ReservationsController < ApplicationController
    before_action :authenticate_user!
      
      def create
        @reservation = current_user.reservations.build(reservation_params)
        
        if @reservation.save
          render json: { status: 'Reservation created successfully', data: @reservation }, status: :created
        else
          render json: { errors: @reservation.errors.full_messages }, status: :unprocessable_entity
        end
      end
      def show
        @reservation = current_user.reservations.find(params[:id])
        render json: @reservation, status: :ok
        end
      private
      
      def reservation_params
        params.require(:reservation).permit(:concert_id, :seat_type)
      end
end