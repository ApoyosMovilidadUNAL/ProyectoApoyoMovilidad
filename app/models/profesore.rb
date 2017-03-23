class Profesore < ApplicationRecord
    # Asociacion uno a muchos a la tabla solicitudes.
    has_many : solicitudes
end
