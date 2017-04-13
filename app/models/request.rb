class Request < ApplicationRecord
	belongs_to :student
  	belongs_to :professor
  	has_many :document
  	has_many :support

	#Validaciones
        #Validamos que los campos se ingresen.
    validates :req_estado, :presence => {:message => "Campo esta en blanco." }
	
	#Consulta de solicitudes por el nombre del estudiante
	def self.request_by_student(id)
		where(student_id: id)
	end
end
