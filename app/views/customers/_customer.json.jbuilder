json.extract! customer, :id, :company_id, :name, :created_at, :updated_at
json.url customer_url(customer, format: :json)
