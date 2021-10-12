class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :description
      t.string :departament
      t.integer :cost
      t.integer :sale
      t.float :amount

      t.timestamps
    end
  end
end
