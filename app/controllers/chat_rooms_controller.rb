class ChatRoomsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:show]


  def index
  end

  def show
     @chat_room = ChatRoom.includes(messages: :user).find(params[:id])
  end

end
