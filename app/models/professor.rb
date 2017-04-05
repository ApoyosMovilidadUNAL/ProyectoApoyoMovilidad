class Professor < ApplicationRecord
<<<<<<< HEAD
    has_many :requests

#Validaciones
        #Validamos el formato del email.
=======
	has_many :requests

	#Validaciones
    #Validamos el formato del email.
>>>>>>> Prueba-back
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :pro_email , format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }
        #Validamos que se confirme el password
    validates :pro_pass , confirmation:true
        #Validamos que los campos se ingresen.
    validates :pro_name, :pro_email, :pro_rol, :presence => {:message => "Campo esta en blanco." }

end
