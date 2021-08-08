class UsersController < ApplicationController

    def index 
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        @news_categories = []
        categories = [:domestic, :world, :business, :entertainment, :sports, :it, :science]
        categories.each do |category|
            @news_categories << category if @user.favorites.first[category]==true
        end
    end

    def create
    end

    def destroy
    end
end
