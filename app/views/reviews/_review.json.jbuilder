json.extract! review, :id, :user_id, :movie_id, :star_rating, :review_comment, :created_at, :updated_at
json.url review_url(review, format: :json)
