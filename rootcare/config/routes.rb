Rails.application.routes.draw do
  root "dirts#index"

  resources :drivers do
    resources :dirts
  end
end
