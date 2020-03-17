class CreatePaintings < ActiveRecord::Migration[6.0]
  def change
    create_table :paintings do |t|
      t.date :date_completed
      t.string :paint_medium
      t.integer :style_id
      t.integer :artist_id
      t.integer :genre_id
      t.integer :fan_id

      t.timestamps
    end
  end
end
