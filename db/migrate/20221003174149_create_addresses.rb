class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.belongs_to :vendor, null: false, foreign_key: true
      t.string :street_1
      t.string :street_2
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :country

      t.timestamps
    end
  end
end
