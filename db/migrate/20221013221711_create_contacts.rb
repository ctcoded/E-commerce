class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.belongs_to :address
      t.string :phone
      t.string :fax

      t.timestamps
    end
  end
end
