class Product < ApplicationRecord
   has_and_belongs_to_many :categories
   has_many :images
   has_one :punit
end
