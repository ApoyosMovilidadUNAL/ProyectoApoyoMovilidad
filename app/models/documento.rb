class Documento < ApplicationRecord
    belongs_to :solicitudes
    
    default_scope {order("documentos.DOCU_NOMBRE ASC")}
    scope :order_by_DOCU_NOMBRE,-> (ord) {order("documentos.DOCU_NOMBRE #{ord}")}
    scope :order_by_created_at, -> (ord) {order("documentos.created_at #{ord}")}
end
