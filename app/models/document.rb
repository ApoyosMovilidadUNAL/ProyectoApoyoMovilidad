class Document < ApplicationRecord
	has_one :requests
	#mount_uploader :docu_ruta, DocumentUploader

	

	#Consulta de documentos relaiconados a una solicitud
	def self.document_by_request(id)
		where(request_id: id).paginate(:page => 1, :per_page => 10)
	end


end
