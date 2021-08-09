Rails.application.routes.draw do
  resources :events do
    resources :tickets
  end
  resources :retirements
  root 'welcome#index'
  get '/auth/:provider/callback', to: "sessions#create"
  delete '/logout', to: 'sessions#destroy'
end
