require "application_system_test_case"

class ChatRoomMessagesTest < ApplicationSystemTestCase
  setup do
    @chat_room_message = chat_room_messages(:one)
  end

  test "visiting the index" do
    visit chat_room_messages_url
    assert_selector "h1", text: "Chat room messages"
  end

  test "should create chat room message" do
    visit chat_room_messages_url
    click_on "New chat room message"

    fill_in "Chat room", with: @chat_room_message.chat_room_id
    fill_in "Content", with: @chat_room_message.content
    fill_in "User name", with: @chat_room_message.user_name
    click_on "Create Chat room message"

    assert_text "Chat room message was successfully created"
    click_on "Back"
  end

  test "should update Chat room message" do
    visit chat_room_message_url(@chat_room_message)
    click_on "Edit this chat room message", match: :first

    fill_in "Chat room", with: @chat_room_message.chat_room_id
    fill_in "Content", with: @chat_room_message.content
    fill_in "User name", with: @chat_room_message.user_name
    click_on "Update Chat room message"

    assert_text "Chat room message was successfully updated"
    click_on "Back"
  end

  test "should destroy Chat room message" do
    visit chat_room_message_url(@chat_room_message)
    click_on "Destroy this chat room message", match: :first

    assert_text "Chat room message was successfully destroyed"
  end
end
