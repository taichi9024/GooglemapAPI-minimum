Rails.application.routes.draw do
  root 'maps#index'
  resources :maps, only: %i[index create destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
