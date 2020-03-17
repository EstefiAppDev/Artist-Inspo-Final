class AddFanIdtoPaintings < ActiveRecord::Migration[6.0]
  def change
    add_column :paintings, :fan_id, :int
  end
end
