class User < ApplicationRecord
    belongs_to :event
    has_many :items
    has_many :takes 
end