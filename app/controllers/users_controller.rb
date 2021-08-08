class UsersController < ApplicationController

    def index 
        @users = User.all
    end

    def new
        @user = User.new
    end

    def show
        @user = User.find(params[:id])
        @favorite = @user.favorites.first
        @news_categories = []
        @categories = [:domestic, :world, :business, :entertainment, :sports, :it, :science]
        @categories.each do |category|
            @news_categories << category if @user.favorites.first[category]==true
        end
    end

    def create
        @user = User.new(user_params)
        if @user.save
            @user.favorites.create!
            redirect_to @user
        else
            render 'new'
        end
    end

    def destroy
    end

    private

    def user_params
        params.require(:user).permit(:name, :email)
    end
end
