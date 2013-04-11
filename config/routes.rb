Newspaper::Application.routes.draw do
  resources :papers, :only => [:new, :create, :show] do
    resources :subscription_plans, only: [:new, :create]
  end
  resources :subscription_plans, only: [:new, :create]
  resources :users
end