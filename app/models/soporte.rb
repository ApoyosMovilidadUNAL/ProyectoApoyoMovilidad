class Soporte < ApplicationRecord
    has_one :solicitudes

    default_scope {order("soportes.\"SOPOR_NOMBRE\" ASC")}
 	scope :order_by_SOPOR_NOMBRE,-> (ord) {order("soportes.\"SOPOR_NOMBRE\" #{ord}")}
=begin
  	scope :order_by_created_at,-> (ord) {order("soportes.created_at #{ord}")}
=end
end
