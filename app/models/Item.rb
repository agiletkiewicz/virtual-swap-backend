class Item < ApplicationRecord
    belongs_to :user
    has_one :take, dependent: :destroy

    validates :title, :size, :notes, presence: true
end