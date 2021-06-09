class CitySerializer < ActiveModel::Serializer
  attributes :id, :name, :population, :state, :country, :image
end
