class AddMovieCountToDirectors < ActiveRecord::Migration[6.0]
  def change
    add_column :directors, :movies_count, :integer
  end
end
