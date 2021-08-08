class NewsItemsController < ApplicationController

    def index
        @new_items = NewsItem.all
    end
end
