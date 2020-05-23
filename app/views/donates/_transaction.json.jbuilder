json.extract! transaction, :id, :amount_cents, :user_id, :establishment_id, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
