class FavoritesController < ApplicationController
    def update
        @favorite = Favorite.find(params[:id])
        if @favorite.update_attributes(favorite_params)
            flash[:success] = "Categories updated"
            redirect_to root_path
        else
            flash[:danger] = "Failed to update"
            redirect_to @favorite.user
        end
    end

    private
        def favorite_params
            params.require(:favorite).permit(:domestic, :world, :business, :entertainment, :sports, :it, :science)
        end
end
