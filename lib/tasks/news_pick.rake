require 'rss'

namespace :news_pick do
    desc "ニュースを取得"

    task :save_items => :environment do
        NewsItem.all.each {|news| news.destroy}
        categories = [:domestic, :world, :business, :entertainment, :sports, :it, :science]
        categories.each do |category|
            rss_source = "https://news.yahoo.co.jp/rss/topics/#{category}.xml"
            rss = RSS::Parser.parse(rss_source, validate: false)
            for i in 1..5
                item = rss.items[i]
                NewsItem.create!(title: item.title, content: item.description, url: item.link, category: category)
            end    
        end
    end


    task :update_items => :environment do
        categories = [:domestic, :world, :business, :entertainment, :sports, :it, :science]
        ids = [1, 2, 3, 4, 5, 6, 7]
        categories.zip(ids) do |category, id|
            rss_source = "https://news.yahoo.co.jp/rss/topics/#{category}.xml"
            rss = RSS::Parser.parse(rss_source, validate: false)
            for i in 1..5
                item = rss.items[i]
                news_old = NewsItem.find((id-1)*5+i)
                news_old.update_attributes(title: item.title, content: item.description, url: item.link, category: category)
            end    
        end
    end
end
