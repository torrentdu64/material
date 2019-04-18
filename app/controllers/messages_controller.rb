class MessagesController < ApplicationController

   def create

    # @user = User.new(user_params)
    # @user.skip_password_validation = true
    # @user.save

    @message = Message.new(message_params)

    @chat_room = ChatRoom.find(params[:chat_room_id])
    @message.chat_room = @chat_room
    @message.user_id = current_user.id

    if @message.save
      respond_to do |format|
        format.html { redirect_to chat_room_path(@chat_room) }
        format.js
      end
    else

      respond_to do |format|
        format.html { render "chat_rooms/show" }
        format.js
      end
    end
  end

  private

  def user_params
     params.require(:user).permit(:email)
  end

  def message_params
    params.require(:message).permit(:content)
  end

end
