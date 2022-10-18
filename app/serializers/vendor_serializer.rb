class VendorSerializer < ActiveModel::Serializer
  attributes :id, :vendor_name, :contact, :order_history, :payment
end
