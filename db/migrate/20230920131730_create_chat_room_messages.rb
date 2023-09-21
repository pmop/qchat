class CreateChatRoomMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :chat_room_messages do |t|
      t.belongs_to :chat_room, null: false, foreign_key: true
      t.string :user_name
      t.string :content

      t.timestamps
    end
  end
end
