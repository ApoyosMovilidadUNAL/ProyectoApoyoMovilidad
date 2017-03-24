class Profesore < ApplicationRecord
    # Asociacion uno a muchos a la tabla solicitudes.
    has_many : solicitudes
     #Validaciones
        #Validamos el formato del email.
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :ESTU_EMAIL , format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }
        #Validamos que los campos se ingresen.
    validates :PROFE_NOMBRE, :PROFE_EMAIL, :PROFE_ROL, precense:true
end
