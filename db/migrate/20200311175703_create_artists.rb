class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :artist_name
      t.date :artist_dob
      t.integer :genre_id

      t.timestamps
    end
  end
end
