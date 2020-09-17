class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name

  # belongs_to :event
  # has_many :items, dependent: :destroy
  # has_many :takes, dependent: :destroy
end
