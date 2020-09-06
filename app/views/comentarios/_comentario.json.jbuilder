json.extract! comentario, :id, :comentario, :tweet_id, :user_id, :created_at, :updated_at
json.url comentario_url(comentario, format: :json)
