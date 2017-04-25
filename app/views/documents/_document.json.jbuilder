json.extract! document, :id, :docu_name, :docu_ruta, :created_at, :updated_at
json.url document_url(document, format: :json)
