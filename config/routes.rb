Rails.application.routes.draw do

  root 'welcome#index'

  # get '/welcome', to: 'welcome#index'

  resources :artists, :fans, :shows

  # many to many for shows and artists????
end
