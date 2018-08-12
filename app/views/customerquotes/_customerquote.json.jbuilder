json.extract! customerquote, :id, :name, :date, :amount, :cost_center_id, :created_at, :updated_at
json.url customerquote_url(customerquote, format: :json)
