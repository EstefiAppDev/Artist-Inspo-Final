class RemoveArtistFromPainting < ActiveRecord::Migration[6.0]
  def change
    remove_column :paintings, :artist
  end
end
