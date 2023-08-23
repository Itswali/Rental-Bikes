module Api
  module V1
    class ReservationsController < ApplicationController
      def index
        # reservations = Reservation.all
        # user = User.find(1)
        # puts user.email
        # reservations = Reservation.joins(:user, :item)
        #                           .where(users: { id: user.id })
        #                           .order(created_at: :desc)
        #                           .select('users.id AS user_id,
        #                                   title AS car_name,
        #                                   items.id AS item_id,
        #                                   reservations.city,
        #                                   "Date"')
        # render json: ReservationSerializer.new(reservations).serialized_json

        @reservations_info = Reservation.joins(:user, :item)
                                    .where(users: { id: 1 })
                                    .order(created_at: :desc)
                                    .select('users.email,
                                            items.title AS car_name,
                                            reservations.city,
                                            "Date",
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
