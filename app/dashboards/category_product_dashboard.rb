require "administrate/base_dashboard"

class CategoryProductDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    product: Field::Number,
    category: Field::Number,
    id: Field::Number,
    category: Field::Number,
    product: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :product,
    :category,
    :id,
    :category,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :product,
    :category,
    :id,
    :category,
    :product,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :product,
    :category,
    :category,
    :product,
  ].freeze

  # Overwrite this method to customize how category products are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(category_product)
  #   "CategoryProduct ##{category_product.id}"
  # end
end
