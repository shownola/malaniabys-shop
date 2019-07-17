class Product < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  mount_uploader :image
  # If you use SQLite use this serialize
   # serialize :image

   belongs_to :user, optional: true
   has_many :line_items
   belongs_to :supplier, optional: true
   accepts_nested_attributes_for :supplier
   belongs_to :category, optional: true
   accepts_nested_attributes_for :category
   has_many :comments, dependent: :destroy

   # accepts_nested_attributes_for :suppliers, allow_destroy: true, reject_if: proc { |att| att['company_name'].blank? }

   validates :title, :sku, :price, :cost, presence: true
   validates :description, length: { maximum: 1000, too_long: "%{count} characters allowed" }
   validates :title, length: { maximum: 140, too_long: "%{count} characters allowed"}
   validates :price, numericality: {only_decimal: true}, length: { maximum: 7 }
   # validates :supplier_id, :category_id, presence: true



   private

    def not_referenced_by_any_line_item
      unless line_items.empty?
        errors.add(:base, 'Line items present')
        throw :abort
      end
    end

end
