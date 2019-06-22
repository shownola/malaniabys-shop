class Product < ApplicationRecord

  mount_uploader :image
  # If you use SQLite use this serialize
   # serialize :image

   belongs_to :user, optional: true

   validates :title, :sku, :price, :cost, presence: true
   validates :description, length: { maximum: 1000, too_long: "%{count} characters allowed" }
   validates :title, length: { maximum: 140, too_long: "%{count} characters allowed"}
   validates :price, numericality: {only_decimal: true}, length: { maximum: 7 }




end
