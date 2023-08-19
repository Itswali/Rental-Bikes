module Api
  module V1
    class RegistrationsController < ApplicationController
      def create
        user = User.new(registration_params)

        if user.save
          session[:user_id] = user.id
          render json: { message: 'User registered successfully' }
        else
          render json: { errors: user.errors.full_messages },
                 status: :unprocessable_entity
        end
      end

      private

      def registration_params
        params.permit(:email, :password, :password_confirmation)
      end
    end
  end
end
