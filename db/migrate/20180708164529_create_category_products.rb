class CreateCategoryProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :category_products do |t|
      t.integer :category
      t.integer :product

      t.timestamps
    end
  end
end
