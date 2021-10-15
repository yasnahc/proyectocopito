class AddSupplierToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :supplier, :string
  end
end
