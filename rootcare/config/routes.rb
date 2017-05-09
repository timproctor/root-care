Rails.application.routes.draw do
  get 'dirts', to: 'dirts#index'

  resources :drivers do
    resources :dirts
  end
end
