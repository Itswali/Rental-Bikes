module Api
  module V1
    class NavigationController < ApplicationController
      def links
        navigation_links = [
          # { name: 'Cars', link: '/cars' },
          { name: 'Home', link: '/home' },
          { name: 'Reserve', link: '/home/reserve' },
          { name: 'My Reservations', link: '/home/my_reservations' },
          { name: 'Add Item', link: '/home/add_item' },
          { name: 'Sign Out', link: '/add_item' }
          # { name: 'Delete Item', link: '/delete_item' }
        ]
        render json: navigation_links
      end
    end
  end
end
