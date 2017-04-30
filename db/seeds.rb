# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)

for x in(1..5)
  Professor.create!(
  name:"name_pro#{x}",
  lastname:"lastname_pro#{x}",
  email:"profe#{x}@unal.edu.co")
end


Student.create!(
  name:"estudiante1",
  lastname:"lastname1",
  email:"estudiante1@unal.edu.co",
  rol:1,
  identification: 1,
  faculty: 'ingenieria',
  career:'ingenieria de sistemas')

for x in(2..5)
  Student.create!(
  name:"estudiante#{x}",
  lastname:"lastname#{x}",
  email:"estudiante#{x}@unal.edu.co",
  rol:2,
  identification: x,
  faculty: "ingenieria",
  career:"ingenieria de sistemas")
end

for x in(1..5)
  Request.create(
  state:1,
  description:x,
  amount: x,
  place: x,
  type_req: x,
  student_id:x,
  professor_id:x
  )
end

for x in(1..5)
  Support.create!(
  name:"name_s#{x}",
  route:"ruta_s#{x}",
  request_id:x
  )
end

for x in(1..5)
  Document.create(
  name:"nombre_d#{x}",
  route:"ruta_d#{x}",
  request_id:x
  )
end


