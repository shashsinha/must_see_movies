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

  has_many   :reviews

  has_many   :actors,
             foreign_key: :starred_in_id

  # Indirect associations

end
