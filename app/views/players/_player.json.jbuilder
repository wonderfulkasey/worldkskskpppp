json.extract! player, :id, :name, :worlds, :characters, :description, :created_at, :updated_at
json.url player_url(player, format: :json)
