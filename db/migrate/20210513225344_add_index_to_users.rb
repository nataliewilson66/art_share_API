class AddIndexToUsers < ActiveRecord::Migration[6.1]
  def change
    add_index :artworks, [:title, :artist_id], unique: true
  end
end
