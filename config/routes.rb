Rails.application.routes.draw do
  root to: 'blogs#top'
  resources :blogs
  post 'blogs/confirm', to: 'blogs#confirm'
end
