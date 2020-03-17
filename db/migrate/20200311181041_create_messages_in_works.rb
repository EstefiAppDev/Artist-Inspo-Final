class CreateMessagesInWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :messages_in_works do |t|
      t.integer :painting_id
      t.integer :theme_id

      t.timestamps
    end
  end
end
