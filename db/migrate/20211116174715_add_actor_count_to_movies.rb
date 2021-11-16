class AddActorCountToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :actors_count, :integer
  end
end
