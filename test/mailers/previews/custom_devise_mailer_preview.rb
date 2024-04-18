class CustomDeviseMailerPreview < ActionMailer::Preview
  # パスワードリセットの指示をプレビューする
  def reset_password_instructions
    user = User.first || User.new(email: "preview@example.com", reset_password_token: "faketoken")
    CustomDeviseMailer.reset_password_instructions(user, "faketoken")
  end

  # 確認指示のメールをプレビューする
  def confirmation_instructions
    user = User.first || User.new(email: "preview@example.com", confirmation_token: "faketoken")
    CustomDeviseMailer.confirmation_instructions(user, "faketoken")
  end

  # アンロック指示のメールをプレビューする
  def unlock_instructions
    user = User.first || User.new(email: "preview@example.com", unlock_token: "faketoken")
    CustomDeviseMailer.unlock_instructions(user, "faketoken")
  end
end
