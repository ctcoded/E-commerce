class CreatePurhcaseOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :purhcase_orders do |t|
      t.string :vendor
      t.string :item_notes

      t.timestamps
    end
  end
end
