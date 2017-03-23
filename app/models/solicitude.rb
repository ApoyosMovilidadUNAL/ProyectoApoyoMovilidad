class Solicitude < ApplicationRecord
  # Asociacion uno a muchos a la tabla documentos y la tabla soportes.
  has_many : documentos
  has_many : soportes
end
