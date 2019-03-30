json.extract! jogo, :id, :titulo, :descrecao, :desenvolvedora, :lancamento, :created_at, :updated_at
json.url jogo_url(jogo, format: :json)
