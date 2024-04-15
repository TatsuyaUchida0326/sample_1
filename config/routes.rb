Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root to: 'devise/sessions#new'
  end
  
  get 'home/index'
  resources :users, only: [:show]

  # 開発環境のみでLetterOpenerWebのルートを有効にする
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
