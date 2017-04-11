class Student < ApplicationRecord
	has_many :requests

    #Validaciones
        #Validamos el formato del email.
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :stu_email, format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }
        #Validamos que la cedula solo sea numerica y unico.
    validates :stu_identification, numericality: { only_integer:true }
    validates :stu_identification, uniqueness:true
        #Validamos que los campos se ingresen.
    validates :stu_name, :stu_identification, :stu_email, :stu_rol, :stu_carrera, :stu_facultad, :presence => {:message => "Campo esta en blanco." }

    #Consulta de estudiantes relacionados a un profesor
    def self.student_by_porfessor(name)
        find_by_sql("select students.*
                     from students,professors,requests 
                     WHERE students.id=requests.student_id 
                     AND professors.id=requests.professor_id 
                     AND professors.pro_name=\'#{name}\'")
    end

    #Consulta de todos los estudiantes
    def self.student_all()
        all
        #.paginate(page: params[:page],per_page: 5);
    end

    #Consulta de estudiante realcionado a un documento
    def self.student_by_document(name)
        find_by_sql("select students.*
                     from students,requests,documents
                     WHERE students.id=requests.student_id 
                     AND documents.id=requests.document_id
                     AND documents.docu_name=\'#{name}\'")
    end

end
