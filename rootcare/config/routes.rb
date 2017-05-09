Rails.application.routes.draw do
  root "movies#index"

  resources :drivers do
    resources :dirts
  end
end
