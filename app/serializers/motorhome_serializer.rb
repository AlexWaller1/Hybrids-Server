class MotorhomeSerializer < ActiveModel::Serializer
  attributes :id, :model, :year, :mileage, :color, :image
end
