json.extract! contato, :id, :nome, :telefone, :date, :operadora, :created_at, :updated_at
json.url contato_url(contato, format: :json)