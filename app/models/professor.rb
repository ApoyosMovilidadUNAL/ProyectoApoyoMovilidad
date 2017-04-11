class Professor < ApplicationRecord
	has_many :requests

	#Validaciones
    #Validamos el formato del email.
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :pro_email , format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }
    
        #Validamos que los campos se ingresen.
    validates :pro_name, :pro_email, :pro_rol, :presence => {:message => "Campo esta en blanco." }

    #Consulta de profesores relacionados a un estudiante
    def self.professor_by_student(name)
        find_by_sql("select professors.*
                     from professors,students,requests
                     WHERE students.id=requests.student_id 
                     AND professors.id=requests.professor_id 
                     AND students.stu_name=\'#{name}\'")
    end
end
