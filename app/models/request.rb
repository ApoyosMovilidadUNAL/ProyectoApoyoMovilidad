 class Request < ApplicationRecord
	belongs_to :student
	belongs_to :professor
	has_many :document
	has_many :support

  	#default_scope {order("requests.created_at ASC")}
	#Validaciones
        #Validamos que los campos se ingresen.
    validates :state, :amount, :place, :presence => {:message => "Campo esta en blanco." }
	
	def self.request_by_estado(estado)
        where(state: estado).paginate(:page => 1, :per_page => 10)
    end

	#Consulta de solicitudes asociadas a un estudiante
	def self.request_by_student(id)
		where(student_id: id).paginate(:page => 1, :per_page => 10)
	end

	#Consulta de solicitudes asociadas a un profesor
	def self.request_by_professor(id)
        where(professor_id: id).paginate(:page => 1, :per_page => 10)
  end

  def self.request_by_professor_and_student(id_stu,id_pro)
        where("professor_id IN (?)  AND student_id IN (?)", id_pro, id_stu )
        .paginate(:page => 1, :per_page => 10)
  end    


end
