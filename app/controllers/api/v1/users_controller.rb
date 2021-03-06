class Api::V1::UsersController < ApplicationController

    def create
        @user = User.create(user_params)
        if @user.valid?
            token = encode_token({ user_id: @user.id })
            render json: {user: UserSerializer.new(@user), jwt: token },  status: :created
        else
            render json: {error: "Failed To Create User"}, status: :not_acceptable
        end
    end

    def show
        render json: {user: UserSerializer.new(current_user)}
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
