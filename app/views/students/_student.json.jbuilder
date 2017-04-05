<<<<<<< HEAD
json.extract! student, :id, :stu_name, :stu_pass, :stu_email, :stu_rol, :stu_id, :stu_facultad, :stu_carrera, :created_at, :updated_at
=======
json.extract! student, :id, :stu_name, :stu_pass, :stu_email, :stu_rol, :stu_identification, :stu_facultad, :stu_carrera, :created_at, :updated_at
>>>>>>> Prueba-back
json.url student_url(student, format: :json)
