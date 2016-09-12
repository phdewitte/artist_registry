Rails.application.routes.draw do
  get '/welcome', to: 'welcome#index'

  resources :artists, :fans, :shows

  # many to many for shows and artists????
end
