Rails.application.routes.draw do

  root 'welcome#index'

  get '/welcome', to: 'welcome#index'

  resources :sessions, only: [:new, :create, :destroy]

  resources :artists do
    resources :shows
  end

  resources :fans

  # many to many for shows and artists????
end
