Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  
  root 'home#index'
  
  resources :users, only: [:show]

  # 開発環境のみでLetterOpenerWebのルートを有効にする
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
