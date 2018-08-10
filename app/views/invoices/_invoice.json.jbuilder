json.extract! invoice, :id, :date, :number, :amount, :status, :milestone_type, :customer_po_id, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
