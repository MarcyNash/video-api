Rails.application.routes.draw do
  # get 'videos/index'
  resources :videos,         only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
