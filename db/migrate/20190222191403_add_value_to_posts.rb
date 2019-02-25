class AddValueToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :chat_room_id, :integer
  end
end
