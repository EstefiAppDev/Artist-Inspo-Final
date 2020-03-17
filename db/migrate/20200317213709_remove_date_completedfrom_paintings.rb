class RemoveDateCompletedfromPaintings < ActiveRecord::Migration[6.0]
  def change
    remove_column :paintings, :date_completed
  end
end
