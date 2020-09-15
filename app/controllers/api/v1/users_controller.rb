class Api::V1::UsersController < ApplicationController

    def index
        users = User.where(event_id: params[:event_id])
        render json: UserSerializer.new(users)
    end

    def create
        event = Event.find_by(id: params[:event_id])
        user = event.users.build(user_params)
        if user.save 
            render json: UserSerializer.new(user), status: :accepted
        else
            render json: {errors: event.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private 

    def user_params 
        params.require(:user).permit(:name, :event_id)
    end

end
