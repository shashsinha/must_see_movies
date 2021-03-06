class ReviewResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :user_id, :integer
  attribute :movie_id, :integer
  attribute :star_rating, :integer
  attribute :review_comment, :string

  # Direct associations

  belongs_to :movie

  belongs_to :user

  # Indirect associations
end
