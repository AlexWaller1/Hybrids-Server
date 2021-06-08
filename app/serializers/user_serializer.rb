class UserSerializer < ActiveModel::Serializer
  attributes :username
end

# serializer converts rails objects into json, meant for sending data back to front end
# will only send specified attributes back to client