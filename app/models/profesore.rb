class Profesore < ApplicationRecord
    # Asociacion uno a muchos a la tabla solicitudes.
    has_many : solicitudes
    #Validaciones
    default_scope {order("profesores.PROFE_NOMBRE ASC")}
    scope :order_by_PROFE_NOMBRE,-> (ord) {order("profesores.PROFE_NOMBRE #{ord}")}
    scope :order_by_PROFE_EMAIL, -> (ord) {order("profesores.PROFE_EMAIL #{ord}")}
    scope :order_by_created_at, -> (ord) {order("profesores.created_at #{ord}")}
    #Validamos el formato del email.
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :ESTU_EMAIL , format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }
        #Validamos que los campos se ingresen.
    validates :PROFE_NOMBRE, :PROFE_EMAIL, :PROFE_ROL, precense:true
end
