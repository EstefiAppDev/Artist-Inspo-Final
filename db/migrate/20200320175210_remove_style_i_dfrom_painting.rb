class RemoveStyleIDfromPainting < ActiveRecord::Migration[6.0]
  def change
    remove_column :paintings, :style_id

    remove_column :paintings, :messages_id
  end
end
