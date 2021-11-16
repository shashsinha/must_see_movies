json.extract! movie, :id, :movie_title, :release_date, :movie_duration,
              :movie_description, :director_id, :movie_image, :created_at, :updated_at
json.url movie_url(movie, format: :json)
