class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  scope :recent, -> { order('created_at DESC') }
  scope :higher_price, -> { order('price DESC') }
  scope :lower_price, -> { order('price ASC') }
end
