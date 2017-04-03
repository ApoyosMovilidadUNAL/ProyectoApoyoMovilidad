class Request < ApplicationRecord
  belongs_to :student
  belongs_to :professor
  has_many :document
  has_many :support

#Validaciones
        #Validamos que los campos se ingresen.
    validates :req_estado, :presence => {:message => "Campo esta en blanco." }

end
