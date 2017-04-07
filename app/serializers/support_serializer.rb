class SupportSerializer < ActiveModel::Serializer
  attributes :id, :sup_name, :sup_ruta
  has_one :requests
end
