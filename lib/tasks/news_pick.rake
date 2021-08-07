namespace :news_pick do
    desc "ニュースを取得"

    task :favorite_news => :environment do
        user = User.first
        favorites = []
        categories = [:domestic, :world, :business, :entertainment, :sports, :it, :science]
        categories.each do |category|
            favorites << category.to_s if user.favorites.first[category]==true
        end
        puts [user.name, favorites].to_yaml
    end
end
