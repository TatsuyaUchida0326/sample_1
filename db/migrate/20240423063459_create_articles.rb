class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title, limit: 10, null: false
      t.text :content, null: false
      t.string :image_url  # 画像URLのカラムを追加

      t.timestamps
    end
  end
end
