class VendorSerializer < ActiveModel::Serializer
  attributes :id, :vendor_name

  belongs_to :user
end
