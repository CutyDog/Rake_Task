Rails.application.routes.draw do
  root 'users#index'
  get '/news_items', to: 'news_items#index'
end
