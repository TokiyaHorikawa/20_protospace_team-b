class CreateArticleCategories < ActiveRecord::Migration[5.0]
  def change
    belongs_to :article
    belongs_to :category
    validates :article_id,presence:true
    validates :category_id,presence:true
  end
end
