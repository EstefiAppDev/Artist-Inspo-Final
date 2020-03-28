class DropMessagesInWork < ActiveRecord::Migration[6.0]
  def change
    drop_table :messages_in_works
  end
end
