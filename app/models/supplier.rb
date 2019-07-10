class Supplier < ApplicationRecord
  has_many :products

  # accepts_nested_attributes_for :suppliers, allow_destroy: true, reject_if: proc { |att| att['company_name'].blank? }
end
