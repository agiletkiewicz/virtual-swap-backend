class Api::V1::SessionsController < ApplicationController

    def create 
        event = Event.find_by(id: params[:id])
        if event && event.pin == params[:pin]
            redirect_to api_v1_event_path(event)
        else
            render json: {message: "Incorrect event pin."}
        end
    end

end
