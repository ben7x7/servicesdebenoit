Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'cookys',           to: 'pages#cookys',             as: :cookys
  get 'mentions',         to: 'pages#mentions',           as: :mentions
  get 'confidentialites',  to: 'pages#confidentialites',    as: :confidentialites

  resources :services, only: [ :new, :create, :index, :show ] do
    resources :activities, only: [ :new, :create ]
  end

end





