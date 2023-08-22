module Api
  module V1
    class NavigationController < ApplicationController
      def links
        navigation_links = [
          # { name: 'Cars', link: '/cars' },
          { name: 'Reserve', link: '/reserve' },
          { name: 'My Reservations', link: '/my_reservations' },
          { name: 'Add Item', link: '/add_item' }
          # { name: 'Delete Item', link: '/delete_item' }
        ]
        render json: navigation_links
      end
    end
  end
end
