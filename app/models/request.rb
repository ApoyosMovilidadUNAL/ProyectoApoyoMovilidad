class Request < ApplicationRecord
	belongs_to :student
  	belongs_to :professor
  	has_many :document
  	has_many :support

	#Validaciones
        #Validamos que los campos se ingresen.
    validates :req_estado, :presence => {:message => "Campo esta en blanco." }
	
	#Consulta de solicitudes por el nombre del estudiante
	def self.request_by_student(name)
		find_by_sql("select req_descripcion,req_estado
					from students,requests
					WHERE students.id=requests.student_id 
					AND students.stu_name=\'#{name}\'")
	
	end

end
