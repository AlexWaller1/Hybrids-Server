class SkateparkSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :features, :image
end
