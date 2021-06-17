class MotorhomeSerializer < ActiveModel::Serializer
  attributes :id, :name, :model, :year, :mileage, :color, :image
end
