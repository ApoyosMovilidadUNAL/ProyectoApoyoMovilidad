json.extract! document, :id, :name, :route, :request_id, :created_at, :updated_at
json.url document_url(document, format: :json)
