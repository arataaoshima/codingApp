class Category < ApplicationRecord

  has_many :article_categories
  has_many :articles, through: :article_categories
  validates :category_name, length: {minimum:1, maximum:10}
end
