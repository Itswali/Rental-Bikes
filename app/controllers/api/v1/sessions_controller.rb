module Api
  module V1
    class SessionsController < ApplicationController
      # POST /api/v1/sessions: Creates a new user session (login).
      def create
        user = User.find_by(email: params[:email])

        if user&.valid_password?(params[:password])
          session[:user_id] = user.id # Set user session upon successful login
          render json: { message: 'Logged in successfully', user: }
        else
          render json: { error: 'Invalid email or password' }, status: :unprocessable_entity
        end
      end

      # DELETE /api/v1/sessions: Destroys the user session (logout).
      def destroy
        session.delete(:user_id) # Delete user session to log them out
        render json: { message: 'Logged out successfully' }
      end
    end
  end
end
