json.extract! customer_po, :id, :Date, :number, :cost_center_id, :created_at, :updated_at
json.url customer_po_url(customer_po, format: :json)
