class Event < ApplicationRecord
    has_many :users, dependent: :destroy
    has_many :items, through: :users
    has_many :takes, through: :users

    validates :name, :rules, presence: true
    validates_uniqueness_of :name
    validates :password, length: { is: 6 }
    validates_numericality_of :password

    has_secure_password
end
