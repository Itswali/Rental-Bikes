module Api
  module V1
    class ItemsController < ApplicationController
      def index
        items = Item.all
        render json: ItemSerializer.new(items).serialized_json
      end

      def show
        item = Item.find(params[:id])
        render json: ItemSerializer.new(item).serialized_json
      end

      def create
        params[:user_id]
        item = Item.new(item_params)

        if item.save
          render json: ItemSerializer.new(item).serialized_json
        else
          render json: { errors: item.errors.full_messages }, status: 422
        end
      end

      def update
        item = Item.find(params[:id])
        if item.update(item_params)
          render json: ItemSerializer.new(item).serialized_json
        else
          render json: { errors: item.errors.full_messages }, status: 422
        end
      end

      def destroy
        ids = params[:ids].split(',')
        items = Item.where(id: ids)

        if items.destroy_all
          head :no_content
        else
          render json: { errors: item.errors.full_messages }, status: 422
        end
      end

      private

      def item_params
        params.require(:item).permit(:title, :image_url, :description)
      end
    end
  end
end
