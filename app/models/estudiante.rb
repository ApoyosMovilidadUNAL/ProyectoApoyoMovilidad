class Estudiante < ApplicationRecord
    # Asociacion uno a muchos a la tabla solicitudes.
    has_many :solicitudes

    default_scope {order("estudiantes.ESTU_NOMBRE ASC")}
    scope :order_by_ESTU_NOMBRE,-> (ord) {order("estudiantes.ESTU_NOMBRE #{ord}")}
    scope :order_by_ESTU_EMAIL, -> (ord) {order("estudiantes.ESTU_EMAIL #{ord}")}
    scope :order_by_ESTU_CEDULA, -> (ord) {order("estudiantes.ESTU_CEDULA #{ord}")}
    scope :order_by_ESTU_FACULTAD, -> (ord) {order("estudiantes.ESTU_FACULTAD #{ord}")}
    scope :order_by_created_at, -> (ord) {order("estudiantes.created_at #{ord}")}

    #Validaciones
        #Validamos el formato del email.
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :ESTU_EMAIL , format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }
        #Validamos que la cedula solo sea numerica y unico.
    validates :ESTU_CEDULA , numericality: { only_integer:true }
    validates :ESTU_CEDULA , uniqueness:true
        #Validamos que se confirme el password
    validates :ESTU_PASS , confirmation:true
        #Validamos que los campos se ingresen.
    validates :ESTU_NOMBRE, :ESTU_CEDULA, :ESTU_EMAIL, :ESTU_ROL, :ESTU_CARRERA, :ESTU_FACULTAD, :presence => {:message => "Campo esta en blanco." }
end
