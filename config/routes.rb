Test1::Application.routes.draw do
  devise_for :users

  resources :tasks

  resources :customers

  resources :projects

  root :to => "projects#index"  
end
