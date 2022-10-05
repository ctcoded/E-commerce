class InventorySerializer < ActiveModel::Serializer
  attributes :id, :business_name
  has_many :items

  belongs_to :user
end
