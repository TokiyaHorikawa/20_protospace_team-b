class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.timestamps
      validates :name,presence:true,length:{maximum:50}
      has_many :articles, through: :articles_categories
      has_many :articles_categories, dependent: :destroy
end
    end
    add_index :categories, :name, unique:true
  end
