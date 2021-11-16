json.extract! actor, :id, :actor_name, :starred_in_id, :actor_dob, :actor_bio, :actor_image, :created_at, :updated_at
json.url actor_url(actor, format: :json)
