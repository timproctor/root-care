Rails.application.routes.draw do
  root "movies#index"

  resources :drivers do
    resources :dirts
  end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
