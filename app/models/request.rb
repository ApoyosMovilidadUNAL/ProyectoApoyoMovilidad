class Request < ApplicationRecord
<<<<<<< HEAD
  belongs_to :student
  belongs_to :professor
  has_many :document
  has_many :support

#Validaciones
=======
	belongs_to :student
  	belongs_to :professor
  	has_many :document
  	has_many :support

	#Validaciones
>>>>>>> Prueba-back
        #Validamos que los campos se ingresen.
    validates :req_estado, :presence => {:message => "Campo esta en blanco." }

end
