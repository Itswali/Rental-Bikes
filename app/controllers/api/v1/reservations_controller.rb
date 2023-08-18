module Api
  module V1
    class ReservationsController < ApplicationController
      def index
        reservations = Reservation.all
        render json: ReservationSerializer.new(reservations).serialized_json
      end

      def create
        reservation = Reservation.new(reservation_params)
        if reservation.save
          render json: ReservationSerializer.new(reservation).serialized_json
        else
          render json: { errors: reservation.errors.full_messages }, status: 422
        end
      end

      def destroy
        reservation = Reservation.find(params[:id])
        if reservation.destroy
          head :no_content
        else
          render json: { errors: reservation.errors.full_messages }, status: 422

        end
      end

      private

      def reservation_params
        params.require(:reservation).permit(:Date, :city, :user_id, :item_id)
      end
    end
  end
end
