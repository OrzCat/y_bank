Rails.application.routes.draw do
  get "/admin", to: "admin#index"
  namespace :admin do
    resources :jobs
    resources :companies
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "page#index"
  get "/companies", to: "page#companies"
  get "/companies/:id", to: "page#company", as: "company"
  get "/jobs", to: "page#jobs"
  get "/jobs/:id", to: "page#job", as: "job"
end
