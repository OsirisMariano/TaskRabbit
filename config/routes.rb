# frozen_string_literal: true

Rails.application.routes.draw do
  resources :tasks
  root "tasks#index"
end
