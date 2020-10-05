class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :size, :notes, :user_id, :image_url

end
