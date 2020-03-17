class CreateArtMovements < ActiveRecord::Migration[6.0]
  def change
    create_table :art_movements do |t|
      t.string :genre_name

      t.timestamps
    end
  end
end
