user = User.find_or_initialize_by(email: "sample@email.com")
if user.new_record?
  user.name = "Sample User"
  user.password = "password"
  user.password_confirmation = "password"
  user.confirmed_at = nil
  user.save!
end