class User < ApplicationRecord
    has_many :inventories
    has_many :items, through: :inventories
    validates :username, uniqueness: true, presence: true, length: { minimum: 4 }
    has_secure_password
end
