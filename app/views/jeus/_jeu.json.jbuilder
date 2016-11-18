json.extract! jeu, :id, :title, :description, :rank, :created_at, :updated_at
json.url jeu_url(jeu, format: :json)