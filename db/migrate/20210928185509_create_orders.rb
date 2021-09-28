class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :currency
      t.string :name
      t.float :price
      t.float :sale

      t.timestamps
    end
  end
end
