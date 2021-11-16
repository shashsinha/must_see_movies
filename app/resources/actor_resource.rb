class ActorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :actor_name, :string
  attribute :starred_in_id, :integer
  attribute :actor_dob, :date
  attribute :actor_bio, :string
  attribute :actor_image, :string

  # Direct associations

  belongs_to :starred_in,
             resource: MovieResource

  # Indirect associations

end
