class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :phone
      t.string :address
      t.string :fax

      t.timestamps
    end
  end
end
