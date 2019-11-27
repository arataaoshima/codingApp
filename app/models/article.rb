class Article < ApplicationRecord

  has_many :subcontents
  has_many :article_categories
  has_many :categories, through: :article_categories

  has_many :likes
  has_many :users, through: :likes

  mount_uploader :image, ImageUploader

  def self.search(search) #self.でクラスメソッドとしている
   if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
     #Article.where(['title LIKE ?', "%#{search}%"])
     titles = Article.arel_table
     Article.where(titles[:title].matches("%#{search}%"))
   else
     Article.all #全て表示。
   end
  end

end
