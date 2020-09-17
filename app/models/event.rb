class Event < ApplicationRecord
    has_many :users
    has_many :items, through: :users
    has_many :takes, through: :users

    validates :name, :rules, presence: true
    validates_uniqueness_of :name
    validates :pin, length: { is: 6 }
    validates_numericality_of :pin
end
