# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)

=begin PROFESORES
=end

for x in(1..110)
  Professor.create!(
  pro_name:"profesor#{x}",
  pro_email:"profe#{x}@unal.edu.co",
  pro_rol:1)
end


=begin ESTUDIANTES
=end
Student.create!(
  stu_name:"estudiante1",
  stu_email:"estudiante1@unal.edu.co",
  stu_rol:1,
  stu_identification: 1,
  stu_facultad: 'ingenieria',
  stu_carrera:'ingenieria de sistemas')

for x in(2..110)
  Student.create!(
  stu_name:"estudiante#{x}",
  stu_email:"estudiante#{x}@unal.edu.co",
  stu_rol:2,
  stu_identification: x,
  stu_facultad: 'ingenieria',
  stu_carrera:'ingenieria de sistemas')
end

=begin SOLICITUDES
=end
for x in(1..110)
  Request.create(
  req_estado:1,
  req_descripcion:x,
  student_id:x,
  professor_id:x,
  #document_id:x,
  support_id:x
  )
end

=begin SOPORTES
=end
for x in(1..110)
  Support.create!(
  sup_name:'name_s#{x}',
  sup_ruta:'ruta_s#{x}',
  request_id:x
  )
end

=begin DOCUMENTOS
=end

for x in(1..110)
  Document.create(
  docu_name:"nombre_d#{x}",
  docu_ruta:"ruta_d#{x}",
  request_id:x
  )
end


