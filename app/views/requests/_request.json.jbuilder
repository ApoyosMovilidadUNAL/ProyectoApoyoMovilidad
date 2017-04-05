json.extract! request, :id, :req_estado, :req_descripcion, :student_id, :professor_id, :document_id, :support_id, :created_at, :updated_at
json.url request_url(request, format: :json)
