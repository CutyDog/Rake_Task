class NewsItemsController < ApplicationController

    def index
        @news_items = NewsItem.all
    end

    def all_categories
        @news_all = NewsItem.all
        render json: @news_all
    end

    def domestic
        @news = NewsItem.where(category: "domestic")
        render json: @news
    end

    def world
        @news = NewsItem.where(category: "world")
        render json: @news
    end

    def business
        @news = NewsItem.where(category: "business")
        render json: @news
    end

    def entertainment
        @news = NewsItem.where(category: "entertainment")
        render json: @news
    end

    def sports
        @news = NewsItem.where(category: "sports")
        render json: @news
    end

    def it
        @news = NewsItem.where(category: "it")
        render json: @news
    end

    def science
        @news = NewsItem.where(category: "science")
        render json: @news
    end
end
