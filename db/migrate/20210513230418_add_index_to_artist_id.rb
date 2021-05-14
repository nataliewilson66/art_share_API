class AddIndexToArtistId < ActiveRecord::Migration[6.1]
  def change
    add_index :artworks, :artist_id
  end
end
