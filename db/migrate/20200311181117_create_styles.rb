class CreateStyles < ActiveRecord::Migration[6.0]
  def change
    create_table :styles do |t|
      t.integer :artist_id
      t.integer :theme_id
      t.string :style_name

      t.timestamps
    end
  end
end
