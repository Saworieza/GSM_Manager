json.extract! customerquote, :id, :name, :date, :amount, :customerpo_id, :created_at, :updated_at
json.url customerquote_url(customerquote, format: :json)
