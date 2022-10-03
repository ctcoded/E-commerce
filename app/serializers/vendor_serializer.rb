class VendorSerializer < ActiveModel::Serializer
  attributes :id, :name, :contact, :order_history, :payment
end
