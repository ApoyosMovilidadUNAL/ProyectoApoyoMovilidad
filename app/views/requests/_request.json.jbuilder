json.extract! request, :id, :state, :description, :amount, :place, :Type, :student_id, :professor_id, :created_at, :updated_at
json.url request_url(request, format: :json)
