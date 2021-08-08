Rails.application.routes.draw do
  root 'users#index'
  resources :users
  resources :favorites, only: :update

  get '/news_items', to: 'news_items#index'
  get 'all', to: 'news_items#all_categories'
  get 'domestic', to: 'news_items#domestic'
  get 'world', to: 'news_items#world'
  get 'business', to: 'news_items#business'
  get 'entertainment', to: 'news_items#entertainment'
  get 'sports', to: 'news_items#sports'
  get 'it', to: 'news_items#it'
  get 'science', to: 'news_items#science'
end
