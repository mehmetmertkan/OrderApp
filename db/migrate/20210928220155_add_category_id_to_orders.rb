class AddCategoryIdToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :category_id, :integer
  end
end
