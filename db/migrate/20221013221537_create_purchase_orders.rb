class CreatePurchaseOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :purchase_orders do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :order_notes

      t.timestamps
    end
  end
end
