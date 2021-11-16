class Movie < ApplicationRecord
  mount_uploader :movie_image, MovieImageUploader

  # Direct associations

  belongs_to :director,
             counter_cache: true

  has_many   :bookmarks,
             dependent: :destroy

  has_many   :reviews,
             dependent: :destroy

  has_many   :actors,
             foreign_key: "starred_in_id",
             dependent: :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    movie_title
  end
end
