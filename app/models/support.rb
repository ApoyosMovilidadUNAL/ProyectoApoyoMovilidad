class Support < ApplicationRecord
  	belongs_to :request

  	#mount_uploader :sup_ruta, SupportUploader

	#Consulta de support relaiconados a una solicitud
	def self.support_by_request(id)
		where(request_id: id).paginate(:page => 1, :per_page => 10)
	end
end
