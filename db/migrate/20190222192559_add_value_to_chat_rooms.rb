class AddValueToChatRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :chat_rooms, :post_id, :integer
  end
end
