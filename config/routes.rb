Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :livres
  resources :articles
  resources :videos
  get "convictions", to: "pages#convictions"
  get "competences", to: "pages#competences"
  get "ressources", to: "pages#ressources"
  get "projets", to: "pages#projets"
  get "bibliotheque", to: "pages#bibliotheque"
  get "articles", to: "pages#articles"
  get "videos", to: "pages#videos"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
