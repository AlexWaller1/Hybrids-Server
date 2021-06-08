class SkateparkSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :fetures, :image
end
