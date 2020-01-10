class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end

    def show
        render json @user
    end

    def user
        render json: current_user
    end

    def create
        @user = User.create(user_params)
        
        if @user.save
            render json: @user
        else
            render json: @user.error, status: 'error'
        end
    end


    private

    def current_user
        @user = User.find(params[:id])
    end

    def user_params
        params.permit(:username, :email) 
    end
end
