module Api
  module V1
    class ReservationsController < ApplicationController
      protect_from_forgery with: :null_session
      def index
        user_id = params[:user_id]
        @reservations_info = Reservation.joins(:user, :item)
          .where(users: { id: user_id })
          .order(created_at: :desc)
          .select('users.email,
            items.title AS car_name,
            reservations.city,
            "Date",
            items.image_url AS image,
            reservations.id')
        render json: @reservations_info, status: :ok
      end

      def create
        reservation = Reservation.new(reservation_params)
        if reservation.save
          render json: ReservationSerializer.new(reservation).serialized_json
        else
          render json: { errors: reservation.errors.full_messages }, status: 422
        end
      end

      # DELETE /api/v1/reservations/:id: Deletes a specific reservation by ID.
      def destroy
        reservation = Reservation.find(params[:id])
        if reservation.destroy
          head :no_content
        else
          render json: { errors: reservation.errors.full_messages }, status: 422
        end
      end

      private

      # Defines the permitted parameters for creating a reservation.
      def reservation_params
        params.require(:reservation).permit(:Date, :city, :user_id, :item_id)
      end
    end
  end
end
