class CreateCategoriesProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :categories_products do |t|
      t.references :category
      t.references :product

      t.timestamps
    end
  end
end
