Rails.application.routes.draw do
  resources :abilities
  resources :weapons
  resources :encounters
  resources :vampires
  resources :hunters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/encounters/:id/fight', to: 'encounters#fight'
end
