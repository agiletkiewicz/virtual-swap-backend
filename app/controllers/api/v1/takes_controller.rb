class Api::V1::TakesController < ApplicationController

    def create 
        take = Take.new(take_params)
        if take.save 
            # render json: ItemSerializer.new(item), status: :accepted
            render json: take, status: :accepted
        else
            render json: {errors: take.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def take_params 
        params.require(:take).permit(:user_id, :item_id)
    end
end
