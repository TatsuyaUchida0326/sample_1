class CustomDeviseMailer < Devise::Mailer
  helper :application  # ビューヘルパーを使用する場合
  
  # メール送信時のデフォルトロケールを日本語に設定
  def confirmation_instructions(record, token, opts={})
    I18n.with_locale(:ja) do
      super
    end
  end
  
  def reset_password_instructions(record, token, opts={})
    I18n.with_locale(:ja) do
      super
    end
  end

  def unlock_instructions(record, token, opts={})
    I18n.with_locale(:ja) do
      super
    end
  end
end
