class CreateTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :types do |t|
      t.integer :theme_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
