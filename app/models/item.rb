class Item < ApplicationRecord
    belongs_to :vendor
    belongs_to :inventory
end
