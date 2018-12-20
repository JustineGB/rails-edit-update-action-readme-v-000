Rails.application.routes.draw do
  resources :articles, only: %i[index show new creatE]
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch 'articles/:id', to: 'articles#update'
end
