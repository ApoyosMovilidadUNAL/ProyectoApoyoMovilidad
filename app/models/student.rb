class Student < ApplicationRecord
<<<<<<< HEAD
    has_many :requests
=======
	has_many :requests
>>>>>>> Prueba-back

    #Validaciones
        #Validamos el formato del email.
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
<<<<<<< HEAD
    validates :stu_email , format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }
        #Validamos que la cedula solo sea numerica y unico.
    validates :stu_id , numericality: { only_integer:true }
    validates :stu_id , uniqueness:true
        #Validamos que se confirme el password
    validates :stu_pass , confirmation:true
        #Validamos que los campos se ingresen.
    validates :stu_name, :stu_id, :stu_email, :stu_rol, :stu_carrera, :stu_facultad, :presence => {:message => "Campo esta en blanco." }
=======
    validates :stu_email, format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }
        #Validamos que la cedula solo sea numerica y unico.
    validates :stu_identification, numericality: { only_integer:true }
    validates :stu_identification, uniqueness:true
        #Validamos que se confirme el password
    validates :stu_pass, confirmation:true
        #Validamos que los campos se ingresen.
    validates :stu_name, :stu_identification, :stu_email, :stu_rol, :stu_carrera, :stu_facultad, :presence => {:message => "Campo esta en blanco." }
>>>>>>> Prueba-back
end
