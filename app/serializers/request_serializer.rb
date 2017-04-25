class RequestSerializer < ActiveModel::Serializer
  attributes :id, :req_estado, :req_descripcion
  belongs_to :student
  belongs_to :professor
  has_many :document
  has_many :support
end
