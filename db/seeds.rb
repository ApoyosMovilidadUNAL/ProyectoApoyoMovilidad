# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin PROFESORES
=end

for x in(1..110)
     Profesore.create!(
     PROFE_NOMBRE:"profesor#{x}",
     PROFE_PASS:"passp#{x}",
     PROFE_EMAIL:"profe#{x}@unal.edu.co",
     PROFE_ROL:1)
end


=begin ESTUDIANTES
=end
for x in(1..110)
    Estudiante.create!(
     ESTU_NOMBRE:"estudiante#{x}",
     ESTU_PASS:"passs#{x}",
     ESTU_EMAIL:"estudiante#{x}@unal.edu.co",
     ESTU_ROL:2,
     ESTU_CEDULA: x,
     ESTU_FACULTAD: 'ingenieria',
     ESTU_CARRERA:'ingenieria de sistemas')
end


=begin SOPORTES
=end
for x in(1..110)
    Soporte.create!(
        SOPOR_NOMBRE:'nombre_s#{x}',
        SOPOR_RUTA:'ruta_s#{x}')
end

=begin DOCUMENTOS
=end
for x in(1..110)
    Documento.create(
        DOCU_NOMBRE:"nombre_d#{x}",
        DOCU_RUTA:"ruta_d#{x}")
end

=begin SOLICITUDES
=end
for x in(1..101)
    Solicitude.create(
        SOLI_ESTADO:1,
        estudiantes_id:x,
        profesores_id:x,
        documentos_id:x,
        soportes_id:x
    )
end








