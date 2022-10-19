class PurchaseOrderSerializer < ActiveModel::Serializer
  attributes :id, :order_notes

  belongs_to :user
end
