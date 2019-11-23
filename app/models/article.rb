class Article < ApplicationRecord

  has_many :subcontents
  mount_uploader :image, ImageUploader

  def self.search(search) #self.でクラスメソッドとしている
   if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
     Article.where(['title LIKE ?', "%#{search}%"])
   else
     Article.all #全て表示。
   end
  end

end
