class User < ApplicationRecord
    has_many :inventories
    has_many :items, through: :inventories
    has_many :purchase_orders
    has_many :vendors
    validates :username, uniqueness: true, presence: true, length: { minimum: 4 }
    has_secure_password
end
