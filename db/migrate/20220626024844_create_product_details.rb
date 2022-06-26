class CreateProductDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :product_details do |t|
      t.string :name
      t.integer :code
      t.text :description

      t.timestamps
    end
  end
end
