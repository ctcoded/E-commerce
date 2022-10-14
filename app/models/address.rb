class Address < ApplicationRecord
    has_one :contact
    belongs_to :vendor
end
