class Movie < ApplicationRecord
  # Direct associations

  has_many   :actors,
             :foreign_key => "starred_in_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    movie_title
  end

end
