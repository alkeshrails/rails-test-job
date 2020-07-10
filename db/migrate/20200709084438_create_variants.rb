class CreateVariants < ActiveRecord::Migration[5.2]
  def change
    create_table :variants do |t|
      t.references :product, foreign_key: true
      t.integer :quantity
      t.decimal :price, precision: 8, scale: 2
      t.string :sku

      t.timestamps
    end
  end
end
