Rails.application.routes.draw do
  # using scope to change routes without changing directory structure: https://devblast.com/b/rails-5-routes-scope-vs-namespace
  scope :api do
    resources :users
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
