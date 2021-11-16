json.extract! director, :id, :director_name, :director_dob, :director_bio,
              :created_at, :updated_at
json.url director_url(director, format: :json)
