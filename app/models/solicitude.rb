class Solicitude < ApplicationRecord
  belongs_to :documentos
  belongs_to :recursos
  belongs_to :estudiantes
  belongs_to :profesores
end
