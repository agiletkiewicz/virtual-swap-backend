class TakeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :item_id, :user_id
  
end
