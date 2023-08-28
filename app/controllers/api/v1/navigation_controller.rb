module Api
  module V1
    class NavigationController < ApplicationController
      def links
        navigation_links = [
          # { name: 'Cars', link: '/cars' },
          { name: 'Home', link: '/home' },
          { name: 'Reserve', link: '/home/reserve' },
          { name: 'My Reservations', link: '/home/my_reservations' },
          { name: 'Add Car', link: '/home/add_item' },
          { name: 'Delete Car', link: '/delete_item' },
          { name: 'Sign Out', link: '/logout' }
        ]
        render json: navigation_links
      end
    end
  end
end
