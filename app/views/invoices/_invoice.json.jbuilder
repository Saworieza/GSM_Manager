json.extract! invoice, :id, :number, :date, :amount, :status_id, :scope_id, :customerpo_id, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
