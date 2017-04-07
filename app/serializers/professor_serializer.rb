class ProfessorSerializer < ActiveModel::Serializer
  attributes :id, :pro_name, :pro_pass, :pro_email, :pro_rol
  has_many :requests
end
