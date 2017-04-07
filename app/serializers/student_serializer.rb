class StudentSerializer < ActiveModel::Serializer
  attributes :id, :stu_name, :stu_pass, :stu_email, :stu_rol, :stu_identification, :stu_facultad, :stu_carrera
  has_many :requests
end
