class Vendor < ApplicationRecord
    has_one :address
    belongs_to :user
end
