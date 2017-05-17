class Document < ApplicationRecord
  	belongs_to :request
	#has_one :requests

  	mount_uploader :route, DocUploader
  	validates :name, :presence => {:message => "Campo esta en blanco." }
  	validates :route, :presence => {:message => "Campo esta en blanco." }
	#Consulta de documentos relaiconados a una solicitud
   	def self.document_by_request(id)
		where(request_id: id).paginate(:page => 1, :per_page => 10)
	end
end
