class UsersController < ApplicationController
    def index
        @users = User.all
    end
    def show
        @user = User.find(params[:id])
    end
    def new
        @user = User.new
    end
    def create
        @user = User.new(users_params)
        if @user.save
            redirect_to @user
        else
            render :new, status: :unprocessable_entity
        end
    end
    def edit
        @user = User.find(params[:id])
    end
    def update
        @user = User.find(params[:id])
        if @user.update(users_params)
            redirect_to @user
        else
            render :edit, status: :unprocessable_entity
        end
    end
    
    private
        def users_params
            params.require(:user).permit(:name)
        end
end
