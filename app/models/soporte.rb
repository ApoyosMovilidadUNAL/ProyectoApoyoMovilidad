class Soporte < ApplicationRecord
    belongs_to :solicitudes

    default_scope {order("soportes.SOPOR_NOMBRE ASC")}
 	scope :order_by_SOPOR_NOMBRE,-> (ord) {order("soportes.SOPOR_NOMBRE #{ord}")}
  	scope :order_by_created_at,-> (ord) {order("soportes.created_at #{ord}")}
end
