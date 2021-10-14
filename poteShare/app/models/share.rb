class Share < ApplicationRecord
  mount_uploader :image, ImageUploader
end
