# frozen_string_literal: true

Rails.application.routes.draw do
  resources :rankings
  resources :players
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
