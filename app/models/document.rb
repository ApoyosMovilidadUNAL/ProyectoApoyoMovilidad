class Document < ApplicationRecord
	has_one :requests
	mount_uploader :docu_ruta, DocumentUploader

	#Consulta de documento relacionado a un estudiante
	def self.documents_by_student(nit)
		find_by_sql("select documents.*
                     from students,requests,documents
                     WHERE students.id=requests.student_id 
                     AND documents.id=requests.document_id
                     AND students.stu_identification=#{nit}")
	end

	#Consulta de documentos relaiconados a una solicitud
	def self.document_by_request(id)
		find_by_sql("select documents.*
					 from requests,documents
					 where documents.id=requests.document_id
					 and requests.id=#{id}")
	end
end
