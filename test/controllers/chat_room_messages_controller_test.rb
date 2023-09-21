require "test_helper"

class ChatRoomMessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chat_room_message = chat_room_messages(:one)
  end

  test "should get index" do
    get chat_room_messages_url
    assert_response :success
  end

  test "should get new" do
    get new_chat_room_message_url
    assert_response :success
  end

  test "should create chat_room_message" do
    assert_difference("ChatRoomMessage.count") do
      post chat_room_messages_url, params: { chat_room_message: { chat_room_id: @chat_room_message.chat_room_id, content: @chat_room_message.content, user_name: @chat_room_message.user_name } }
    end

    assert_redirected_to chat_room_message_url(ChatRoomMessage.last)
  end

  test "should show chat_room_message" do
    get chat_room_message_url(@chat_room_message)
    assert_response :success
  end

  test "should get edit" do
    get edit_chat_room_message_url(@chat_room_message)
    assert_response :success
  end

  test "should update chat_room_message" do
    patch chat_room_message_url(@chat_room_message), params: { chat_room_message: { chat_room_id: @chat_room_message.chat_room_id, content: @chat_room_message.content, user_name: @chat_room_message.user_name } }
    assert_redirected_to chat_room_message_url(@chat_room_message)
  end

  test "should destroy chat_room_message" do
    assert_difference("ChatRoomMessage.count", -1) do
      delete chat_room_message_url(@chat_room_message)
    end

    assert_redirected_to chat_room_messages_url
  end
end
