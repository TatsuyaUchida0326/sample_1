class AddConfirmableToDevise < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :datetime
    add_column :users, :confirmation_sent_at, :datetime
    add_column :users, :unconfirmed_email, :string # 任意: メールアドレスの変更が未確認の場合に使用されます

    add_index :users, :confirmation_token, unique: true
  end
end
