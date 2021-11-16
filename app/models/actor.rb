class Actor < ApplicationRecord
  mount_uploader :actor_image, ActorImageUploader

  # Direct associations

  belongs_to :starred_in,
             :class_name => "Movie",
             :counter_cache => true

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    actor_name
  end

end
