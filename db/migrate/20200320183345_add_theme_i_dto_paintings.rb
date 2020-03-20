class AddThemeIDtoPaintings < ActiveRecord::Migration[6.0]
  def change
    add_column :paintings, :theme_id, :integer
  end
end
