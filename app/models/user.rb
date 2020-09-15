class User < ApplicationRecord
    belongs_to :event
    has_many :items
end