Rails.application.routes.draw do
  root to: 'blogs#index'
  resources :blogs
  post 'blogs/confirm', to: 'blogs#confirm'
end
