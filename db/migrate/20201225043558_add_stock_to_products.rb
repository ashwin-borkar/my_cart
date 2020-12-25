class AddStockToProducts < ActiveRecord::Migration[6.0]
  def change
  	add_column :products, :stock, :integer, default: 0
  end
end
