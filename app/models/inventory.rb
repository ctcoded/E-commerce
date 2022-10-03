class Inventory < ApplicationRecord
  has_many :inventory_items
  belongs_to :user
end
