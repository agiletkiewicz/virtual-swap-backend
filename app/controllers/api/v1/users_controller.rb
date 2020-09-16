class Api::V1::UsersController < ApplicationController


    def create
        user = User.new(user_params)
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
