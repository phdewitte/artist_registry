Rails.application.routes.draw do
  root :to => 'welcome#index'

  get '/welcome', to: 'welcome#index'

  resources :artists do
    resources :shows
  end

  resources :fans

  # many to many for shows and artists????
end
