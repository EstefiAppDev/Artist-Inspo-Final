class AddTitleToPaintings < ActiveRecord::Migration[6.0]
  def change
    add_column :paintings, :title, :string

    add_column :paintings, :currently_at, :string

    add_column :paintings, :additional_info, :string


  end
end
