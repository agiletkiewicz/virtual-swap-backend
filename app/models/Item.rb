class Item < ApplicationRecord
    belongs_to :user
    has_one :take, dependent: :destroy

    validates :title, :size, :notes, :image_url, presence: true
end