class ItemSerializer < ActiveModel::Serializer
  attributes :id, :belongs_to, :name, :description, :vendor, :image, :integer, :integer, :integer
end
