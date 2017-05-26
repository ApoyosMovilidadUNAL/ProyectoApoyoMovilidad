class DocumentSerializer < ActiveModel::Serializer
  attributes :id, :docu_name, :docu_ruta
  has_one :requests
end
