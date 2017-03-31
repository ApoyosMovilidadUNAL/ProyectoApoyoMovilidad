class Solicitude < ApplicationRecord
  # Asociacion uno a muchos a la tabla documentos y la tabla soportes.
  has_many :documentos
  has_many :soportes
  default_scope {order("solicitudes.SOLI_ESTADO ASC")}
  scope :order_by_SOLI_ESTADO,-> (ord) {order("solicitudes.SOLI_ESTADO #{ord}")}
  scope :order_by_created_at,-> (ord) {order("solicitudes.created_at #{ord}")}
end
