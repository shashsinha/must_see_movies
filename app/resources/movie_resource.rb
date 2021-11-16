class MovieResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :movie_title, :string
  attribute :release_date, :date
  attribute :movie_duration, :string
  attribute :movie_description, :string
  attribute :director_id, :integer
  attribute :movie_image, :string

  # Direct associations

  # Indirect associations

end
