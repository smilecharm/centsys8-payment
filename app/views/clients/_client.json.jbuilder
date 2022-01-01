json.extract! client, :id, :name, :birthyear, :needs, :startdate, :ref, :created_at, :updated_at
json.url client_url(client, format: :json)
