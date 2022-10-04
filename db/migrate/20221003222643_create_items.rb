class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.belongs_to :inventory, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.string :vendor
      t.string :image
      t.integer :on_hand
      t.integer :committed
      t.integer :total_sold

      t.timestamps
    end
  end
end
