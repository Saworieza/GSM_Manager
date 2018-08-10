json.extract! customer_quote, :id, :name, :date, :amount, :customer_po_id, :created_at, :updated_at
json.url customer_quote_url(customer_quote, format: :json)
