class ChatRoomMessagesController < ApplicationController
  before_action :set_chat_room_message, only: %i[ show edit update destroy ]

  # GET /chat_room_messages or /chat_room_messages.json
  def index
    @chat_room_messages = ChatRoomMessage.all
  end

  # GET /chat_room_messages/1 or /chat_room_messages/1.json
  def show
  end

  # GET /chat_room_messages/new
  def new
    @chat_room_message = ChatRoomMessage.new
  end

  # GET /chat_room_messages/1/edit
  def edit
  end

  # POST /chat_room_messages or /chat_room_messages.json
  def create
    @chat_room_message = ChatRoomMessage.new(chat_room_message_params)

    respond_to do |format|
      if @chat_room_message.save
        format.html { redirect_to chat_room_message_url(@chat_room_message), notice: "Chat room message was successfully created." }
        format.json { render :show, status: :created, location: @chat_room_message }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @chat_room_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chat_room_messages/1 or /chat_room_messages/1.json
  def update
    respond_to do |format|
      if @chat_room_message.update(chat_room_message_params)
        format.html { redirect_to chat_room_message_url(@chat_room_message), notice: "Chat room message was successfully updated." }
        format.json { render :show, status: :ok, location: @chat_room_message }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @chat_room_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chat_room_messages/1 or /chat_room_messages/1.json
  def destroy
    @chat_room_message.destroy

    respond_to do |format|
      format.html { redirect_to chat_room_messages_url, notice: "Chat room message was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chat_room_message
      @chat_room_message = ChatRoomMessage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chat_room_message_params
      params.require(:chat_room_message).permit(:chat_room_id, :user_name, :content)
    end
end
