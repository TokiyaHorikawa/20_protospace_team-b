class Category < ActiveRecord::Base
  alidates :name,presence:true,length:{maximum:50}
  has_many :articles, through: :articles_categories
  has_many :articles_categories, dependent: :destroy
end
