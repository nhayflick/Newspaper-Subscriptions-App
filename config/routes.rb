Newspaper::Application.routes.draw do
  resources :papers do
    resources :subscription_plans
  end
end