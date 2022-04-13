# frozen_string_literal: true
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'

  resources :fighters
  resources :fights, except: %i[edit update create destroy]
  post 'fights/result'
end
