Rails.application.routes.draw do
  namespace :admin do
    resources :jobs
  end
  namespace :admin do
    resources :companies
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
