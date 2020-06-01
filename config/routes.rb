Rails.application.routes.draw do
  resources :pickuplists
  get 'pickuplists/index'
  get 'hello/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
