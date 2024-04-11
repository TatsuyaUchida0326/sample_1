class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  # ログイン後にリダイレクトされるパスをカスタマイズ
  def after_sign_in_path_for(resource)
    # 例: ログイン後にユーザーの詳細ページにリダイレクトする
    user_path(current_user) # または、任意のパスを指定
  end
end
