class Item < ApplicationRecord
    belongs_to :user
    has_one :take

    validates :title, :size, :notes, presence: true
end