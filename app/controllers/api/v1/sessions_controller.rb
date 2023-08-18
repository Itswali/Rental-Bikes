module Api
  module V1
    class SessionsController < ApplicationController
<<<<<<< HEAD
            def create
              user = User.find_by(email: params[:email])
              
              if user&.valid_password?(params[:password])
                session[:user_id] = user.id
                render json: { message: 'Logged in successfully', user: user }
              else
                render json: { error: 'Invalid email or password' }, status: :unprocessable_entity
              end
            end
          
            def destroy
              session.delete(:user_id)
              render json: { message: 'Logged out successfully' }
      end
=======
      def create
        user = User.find_by(email: params[:email])

        if user&.valid_password?(params[:password])
          session[:user_id] = user.id
          render json: { message: 'Logged in successfully' }
        else
          render json: { error: 'Invalid email or password' }, status: :unprocessable_entity
        end
      end

      def destroy
        session.delete(:user_id)
        render json: { message: 'Logged out successfully' }
      end
>>>>>>> b6e07e4dfd23b1ea0ea49884af9f86b3870ec5af
    end
  end
end
