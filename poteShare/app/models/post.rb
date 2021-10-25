class Post < ApplicationRecord
mount_uploader :image, ImageUploader
validates :title,:comment,:area,:price,:image,presence: true
 
 
 def self.search(search)
    if search
     Room.where(['name LIKE ?', "%#{search}%"])
    else
      Romm.all
    end
  end
end
