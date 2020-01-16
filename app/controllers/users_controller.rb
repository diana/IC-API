class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users, include: [:games]
    end

    def show
        @user = User.find(params[:id])
        render json: @user, include: [:games]
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
        @user = User.find(params[:user_id])
    end

    def user_params
        params.permit(:user_id) 
    end
end
