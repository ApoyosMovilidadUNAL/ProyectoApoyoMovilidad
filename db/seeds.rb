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
  pro_pass:"passp#{x}",
  pro_email:"profe#{x}@unal.edu.co",
  pro_rol:1)
end


=begin ESTUDIANTES
=end
for x in(1..110)
  Student.create!(
  stu_name:"estudiante#{x}",
  stu_pass:"passs#{x}",
  stu_email:"estudiante#{x}@unal.edu.co",
  stu_rol:2,
<<<<<<< HEAD
  stu_id: x,
=======
  stu_identification: x,
>>>>>>> Prueba-back
  stu_facultad: 'ingenieria',
  stu_carrera:'ingenieria de sistemas')
end


=begin SOPORTES
=end
for x in(1..110)
  Support.create!(
  sup_name:'name_s#{x}',
  sup_ruta:'ruta_s#{x}')
end

=begin DOCUMENTOS
=end
for x in(1..110)
  Document.create(
  docu_name:"nombre_d#{x}",
  docu_ruta:"ruta_d#{x}")
end

=begin SOLICITUDES
=end
for x in(1..101)
  Request.create(
  req_estado:1,
<<<<<<< HEAD
  students_id:x,
  professors_id:x,
  documents_id:x,
  supports_id:x
=======
  req_descripcion:x,
  student_id:x,
  professor_id:x,
  document_id:x,
  support_id:x
>>>>>>> Prueba-back
  )
end


