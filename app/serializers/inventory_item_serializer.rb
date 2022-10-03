class InventoryItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :vendor, :image, :on_hand, :committed, :total_sold
  has_one :user
end
