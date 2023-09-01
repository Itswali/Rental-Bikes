module Api
  module V1
    class SessionsController < ApplicationController
      # POST /api/v1/sessions: Creates a new user session (login).
      def create
        user = User.find_by(email: params[:email])

        if user&.valid_password?(params[:password])
          session[:user_id] = user.id
          render json: { message: 'Logged in successfully', user: }
        else
          render json: { error: 'Invalid email or password' }, status: :unprocessable_entity
        end
      end

      def destroy
        session.delete(:user_id)
        render json: { message: 'Logged out successfully' }
      end
    end
  end
end
