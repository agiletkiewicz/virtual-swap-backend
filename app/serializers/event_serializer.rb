class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :rules
end
