Rails.application.routes.draw do

  get 'users/my_portfolio'

  devise_for :users
  resources :user_stocks, except: [:show, :edit, :update]
  
  root to: 'welcome#index'
  get 'my_portfolio', to: "users#my_portfolio"
  get 'search_stocks', to: "stocks#search"

end
