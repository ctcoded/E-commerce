class CreateInventories < ActiveRecord::Migration[6.1]
  def change
    create_table :inventories do |t|
      t.string :business_name
      t.integer :user_id

      t.timestamps
    end
  end
end
