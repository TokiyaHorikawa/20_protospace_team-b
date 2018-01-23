class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.references :user, foreign_key: true
      t.timestamps
      has_many :categories, through: :article_categories
      has_many :article_categories, dependent: :destroy
    end
    add_index :articles,[:user_id,:created_at]
  end
end
