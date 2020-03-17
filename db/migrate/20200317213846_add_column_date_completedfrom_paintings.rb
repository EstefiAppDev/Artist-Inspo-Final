class AddColumnDateCompletedfromPaintings < ActiveRecord::Migration[6.0]
  def change
    add_column :paintings, :date, :string
  end
end
