class Api::V1::ItemsController < ApplicationController


    def create 
        item = Item.new(item_params)
        if item.save 
            # render json: ItemSerializer.new(item), status: :accepted
            render json: item, status: :accepted
        else
            item.save
            render json: {errors: item.errors.full_messages}
        end
    end

    def destroy
        item = Item.find_by(id: params[:id])
        item.destroy
        render json: {message: "success"}, status: :accepted
    end

    private 

    def item_params 
        params.require(:item).permit(:title, :size, :notes, :user_id, :image_url)
    end

end
