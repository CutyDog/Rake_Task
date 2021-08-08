require 'rss'

namespace :news_pick do
    desc "ニュースを取得"

    task :favorite_news => :environment do
        NewsItem.all.each {|news| news.destroy}
        categories.each do |category|
            rss_source = "https://news.yahoo.co.jp/rss/topics/#{category}.xml"
            rss = RSS::Parser.parse(rss_source, validate: false)
            for i in 1..5
                item = rss.items[i]
                NewsItem.create!(title: item.title, content: item.description, url: item.link, category: category)
            end    
        end
    end
end
