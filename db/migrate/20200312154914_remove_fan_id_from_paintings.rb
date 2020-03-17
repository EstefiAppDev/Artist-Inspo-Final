class RemoveFanIdFromPaintings < ActiveRecord::Migration[6.0]
  def change
    remove_column :paintings, :fan_id
  end
end
