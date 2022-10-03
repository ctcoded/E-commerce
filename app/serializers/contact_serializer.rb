class ContactSerializer < ActiveModel::Serializer
  attributes :id, :phone, :address, :fax
end
