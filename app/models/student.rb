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

    #Consulta de estudiante por identificador
    def self.student_by_identification(identificador)
        where(stu_identification: identificador).paginate(:page => 1, :per_page => 10)
    end

    #Consulta solicitudes asociadas a un estudiante por identificacion
    def self.request_by_student_identification(identificador)
        Request.request_by_student(where(stu_identification: identificador)[0].id)
    end

    #Consulta solicitudes asociadas a un estudiante por nombre
    def self.request_by_student_name(nombre)
        #Client.where(orders_count: [1,3,5])
        arr = []

        where("stu_name LIKE ?","%#{nombre}%").find_each do |stud|
            arr.push(stud.id)
        end
        Request.request_by_student(arr).paginate(:page => 1, :per_page => 10)
    end

    def self.request_by_student_and_professor(nombreStudent, nombreProfessor)
        #Client.where(orders_count: [1,3,5])
        arrStudent = []
        arrProfessor = []
        
        where("stu_name LIKE ?","%#{nombreStudent}").find_each do |stud|
            arrStudent.push(stud.id)
        end
        Professor.where("pro_name LIKE ?","%#{nombreProfessor}").find_each do |prof|
            arrProfessor.push(prof.id)
        end

        Request.request_by_professor_and_student(arrStudent,arrProfessor)
        .paginate(:page => 1, :per_page => 10)
    end

    #Consulta solicitudes asociadas a un estudiante por correo
    def self.request_by_student_email(email)
        Request.request_by_student(where(stu_email: email)[0].id).paginate(:page => 1, :per_page => 10)
    end

    #consulta informacion del estudiante
    def self.prueba(identificador)
        find_by_id(Request.request_by_student(where(stu_identification: identificador))).paginate(:page => 1, :per_page => 10)
    end

end
