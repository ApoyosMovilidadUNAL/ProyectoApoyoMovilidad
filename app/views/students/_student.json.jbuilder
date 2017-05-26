json.extract! student, :id, :name, :lastname, :email, :rol, :identification, :faculty, :career, :created_at, :updated_at
json.url student_url(student, format: :json)
