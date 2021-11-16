class DirectorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :director_name, :string
  attribute :director_dob, :string
  attribute :director_bio, :string

  # Direct associations

  # Indirect associations

end
