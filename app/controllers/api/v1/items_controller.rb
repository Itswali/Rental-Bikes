module Api
  module V1
    class ItemsController < ApplicationController
      def index
        items = Item.all
        render json: ItemSerializer.new(items).serialized_json
      end

      # GET /api/v1/items/:id: Fetches a specific item by ID.
      def show
        item = Item.find(params[:id])
        render json: ItemSerializer.new(item).serialized_json
      end

      # POST /api/v1/items: Creates a new item.
      def create
        params[:user_id]
        item = Item.new(item_params)

        if item.save
          render json: ItemSerializer.new(item).serialized_json
        else
          render json: { errors: item.errors.full_messages }, status: 422
        end
      end

      # PUT /api/v1/items/:id: Updates a specific item by ID.

      def update
        item = Item.find(params[:id])
        if item.update(item_params)
          render json: ItemSerializer.new(item).serialized_json
        else
          render json: { errors: item.errors.full_messages }, status: 422
        end
      end

      # DELETE /api/v1/items/:id: Deletes a specific item by ID.

      def destroy
        ids = params[:ids].split(',')
        items = Item.where(id: ids)

        # item = Item.find(params[:id])

        if items.destroy_all
          head :no_content
        else
          render json: { errors: item.errors.full_messages }, status: 422
        end
      end

      private

      # Defines the permitted parameters for creating or updating an item.

      def item_params
        params.require(:item).permit(:title, :image_url, :description)
      end
    end
  end
end
