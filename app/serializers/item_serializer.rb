class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :vendor, :image, :integer, :integer, :integer
end
