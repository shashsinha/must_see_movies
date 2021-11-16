class AddStarredInReferenceToActors < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :actors, :movies, column: :starred_in_id
    add_index :actors, :starred_in_id
    change_column_null :actors, :starred_in_id, false
  end
end
