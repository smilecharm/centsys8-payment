json.extract! payment, :id, :client, :yearmonth, :payamount, :method, :date, :memo, :ref, :created_at, :updated_at
json.url payment_url(payment, format: :json)
