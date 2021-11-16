class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :movie_title
      t.date :release_date
      t.string :movie_duration
      t.string :movie_description
      t.integer :director_id
      t.string :movie_image

      t.timestamps
    end
  end
end
