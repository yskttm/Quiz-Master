Rails.application.routes.draw do
  root 'questions#index'
  resources :questions do
    post :answer, on: :member
  end
end
