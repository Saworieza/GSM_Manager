json.extract! invoice, :id, :date, :number, :amount, :status_id, :milestone_id, :customerpo_id, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
