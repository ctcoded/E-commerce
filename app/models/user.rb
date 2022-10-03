class User < ApplicationRecord
    has_many :inventories
    validates :username, uniqueness: true, presence: true, length: { minimum: 4 }
    has_secure_password
end
