json.extract! customerpo, :id, :number, :date, :amount, :customerquote_id, :created_at, :updated_at
json.url customerpo_url(customerpo, format: :json)
