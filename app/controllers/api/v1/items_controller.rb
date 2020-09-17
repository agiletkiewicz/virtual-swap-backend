class Api::V1::ItemsController < ApplicationController


    def create 
        item = Item.new(item_params)
        if item.save 
            # render json: ItemSerializer.new(item), status: :accepted
            render json: item, status: :accepted
        else
            render json: {errors: item.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def destroy
        item = Item.find_by(id: params[:id])
        item.destroy
    end

    private 

    def item_params 
        params.require(:item).permit(:title, :size, :notes, :user_id)
    end

end
