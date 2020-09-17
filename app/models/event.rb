class Event < ApplicationRecord
    has_many :users
    has_many :items, through: :users
    has_many :takes, through: :users
end
