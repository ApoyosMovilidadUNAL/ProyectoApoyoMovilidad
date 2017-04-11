class Support < ApplicationRecord
	has_one :requests
	mount_uploader :sup_ruta, SupportUploader
end
