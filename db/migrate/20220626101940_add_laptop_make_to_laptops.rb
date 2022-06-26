class AddLaptopMakeToLaptops < ActiveRecord::Migration[6.0]
  def change
    add_column :laptops, :laptop_make_year, :date
  end
end
