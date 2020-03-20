class DropThemes < ActiveRecord::Migration[6.0]
  def change

    drop_table :themes
    
  end
end
