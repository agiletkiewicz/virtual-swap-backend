class Api::V1::SessionsController < ApplicationController

    def create 
        event = Event.find_by(id: params[:id])
        if event && event.pin == params[:pin]
            render json: EventSerializer.new(event), status: :accepted
        else
            render json: {errors: event.errors.full_messages}, status: :unprocessible_entity
        end
    end

end
