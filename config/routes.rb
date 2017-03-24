Rails.application.routes.draw do
  root to: "pages#home"


  resources :artists, only: [:index, :show, :destroy] do
    resources :songs
  end
end
