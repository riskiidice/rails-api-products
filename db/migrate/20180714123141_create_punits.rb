class CreatePunits < ActiveRecord::Migration[5.1]
  def change
    create_table :punits do |t|
      t.string :price
      t.string :amount
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
