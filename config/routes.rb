Rails.application.routes.draw do
  root to: 'pages#patients'
  # get 'patients', to: 'pages#patients'
  get 'physicians', to: 'pages#physicians'
  get 'about', to: 'pages#about'
  get 'consumer', to: 'pages#consumer'
  get 'contact', to: 'pages#contact'
  get 'privacy', to: 'pages#privacy'
  get 'terms', to: 'pages#terms'
  get 'user-agreement', to: 'pages#user_agreement', as: :user_agreement
  get 'cdw', to: 'pages#cdw'
  get 'cdw-brochure', to: 'pages#cdw_brochure'
  get '/emails/_201410_intro_1', to: 'emails#_201410_intro_1'
  resources :providers, only: [:show]

  post 'send_contact_info', to: "pages#send_contact_info", as: :send_contact_info
end
