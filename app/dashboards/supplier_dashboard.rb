require "administrate/base_dashboard"

class SupplierDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    products: Field::HasMany,
    id: Field::Number,
    company_name: Field::String,
    contact_name: Field::String,
    contact_title: Field::String,
    address: Field::String,
    city: Field::String,
    state: Field::String,
    postal_code: Field::Number,
    country: Field::String,
    phone: Field::String,
    fax: Field::String,
    phone_other: Field::String,
    email: Field::String,
    url: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :products,
    :id,
    :company_name,
    :contact_name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :products,
    :id,
    :company_name,
    :contact_name,
    :contact_title,
    :address,
    :city,
    :state,
    :postal_code,
    :country,
    :phone,
    :fax,
    :phone_other,
    :email,
    :url,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :products,
    :company_name,
    :contact_name,
    :contact_title,
    :address,
    :city,
    :state,
    :postal_code,
    :country,
    :phone,
    :fax,
    :phone_other,
    :email,
    :url,
  ].freeze

  # Overwrite this method to customize how suppliers are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(supplier)
  #   "Supplier ##{supplier.id}"
  # end

  # def display_resource(supplier)
  #   "supplier.company_name"
  # end
end
