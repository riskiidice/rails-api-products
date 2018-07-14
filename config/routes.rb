Rails.application.routes.draw do
  namespace :admin do
    resources :categories_products
    resources :categories
    resources :category_products
    resources :images
    resources :products

    root to: "categories#index"
  end
  scope 'api' do
    scope 'v1' do
      resources :images
      resources :categories
      resources :products
      resources :punits
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
