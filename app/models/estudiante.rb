class Estudiante < ApplicationRecord
    # Asociacion uno a muchos a la tabla solicitudes.
    has_many : solicitudes
    #Validaciones
        #Validamos el formato del email.
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :ESTU_EMAIL , format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }
        #Validamos que la cedula solo sea numerica y unico.
    validates :ESTU_CEDULA , numericality: { only_integer:true }
    validates :ESTU_CEDULA , uniqueness
        #Validamos que se confirme el password
    validates :ESTU_PASS , confirmation : true
        #Validamos que los campos se ingresen.
    validates :ESTU_NOMBRE, :ESTU_CEDULA, :ESTU_EMAIL, :ESTU_ROL, :ESTU_CARRERA, :ESTU_FACULTAD, precense:true
end
