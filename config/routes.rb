Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root to: 'devise/sessions#new'
  end

  get 'home/index'

  # このルートを`resources :users`より上に設定
  get 'users/dash_boards', to: 'dashboards#show'

  resources :users, only: [:show]

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
