json.extract! chat_room_message, :id, :chat_room_id, :user_name, :content, :created_at, :updated_at
json.url chat_room_message_url(chat_room_message, format: :json)
