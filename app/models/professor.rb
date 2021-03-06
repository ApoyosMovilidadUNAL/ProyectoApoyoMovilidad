class Professor < ApplicationRecord
	has_many :requests

	#Validaciones
    #Validamos el formato del email.
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email , format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }
    
        #Validamos que los campos se ingresen.
    validates :name, :lastname, :email, :presence => {:message => "Campo esta en blanco." }

    #consulta de un profesor por email
    def self.professor_by_email(email)
        where(email: email).paginate(:page => 1, :per_page => 10)
    end

    #Consulta solicitudes asociadas a un profesor por nombre
    def self.request_by_professor_name(nombre)
        arr = []
        where("name LIKE ?","%#{nombre}%").find_each do |prof|
            arr.push(prof.id)
        end
        Request.request_by_professor(arr).paginate(:page => 1, :per_page => 10)
    end

    def self.request_by_professor_lastname(apellido)
        arr = []
        where("name LIKE ?","%#{apellido}%").find_each do |prof|
            arr.push(prof.id)
        end
        Request.request_by_professor(arr).paginate(:page => 1, :per_page => 10)
    end

    #Consulta solicitudes asociadas a un profesor por correo
    def self.request_by_professor_email(email)
        Request.request_by_professor(where(email: email)[0].id).paginate(:page => 1, :per_page => 10)
    end

end