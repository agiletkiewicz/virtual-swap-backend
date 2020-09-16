class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :size, :notes

  belongs_to :user
end
