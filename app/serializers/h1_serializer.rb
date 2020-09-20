class H1Serializer
  include FastJsonapi::ObjectSerializer
  attributes :heading, :user_id
end
