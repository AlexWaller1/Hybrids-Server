class SkateboarderSerializer < ActiveModel::Serializer
  attributes :id, :name, :hometown, :style, :biography, :image
end
