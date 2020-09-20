class User < ApplicationRecord
    belongs_to :event
    has_many :items, dependent: :destroy
    has_many :takes, dependent: :destroy

    validates :name, :uniqueness => { :scope => :event }
end