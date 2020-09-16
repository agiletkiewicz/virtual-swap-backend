class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :size, :notes, :user_id

  belongs_to :user
end
