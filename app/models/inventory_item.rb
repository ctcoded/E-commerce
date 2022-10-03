class InventoryItem < ApplicationRecord
  belongs_to :inventory
  belongs_to :user
end
