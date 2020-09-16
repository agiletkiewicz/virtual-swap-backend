class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :rules

  has_many :users, dependent: :destroy
  has_many :items, through: :users
end
