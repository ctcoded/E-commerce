class CreateVendors < ActiveRecord::Migration[6.1]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :contact
      t.string :order_history
      t.string :payment

      t.timestamps
    end
  end
end
