Rails.application.routes.draw do
  resource :homepage
  resources :names

  root to: "homepages#show"
end
