Rails.application.routes.draw do
  get 'pages/home'
   root to: 'notes#index'
    resources :notes
end
