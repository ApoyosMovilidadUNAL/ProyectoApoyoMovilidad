json.extract! student, :id, :stu_name, :stu_pass, :stu_email, :stu_rol, :stu_identification, :stu_facultad, :stu_carrera, :created_at, :updated_at
json.url student_url(student, format: :json)
