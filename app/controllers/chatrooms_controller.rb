class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.where(sender: current_user)
    raise
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = Chatroom.new(receiver_id: params_chatroom[:receiver].to_i)
    @chatroom.sender = current_user
    @chatroom.save
    redirect_to chatroom_path(@chatroom)
  end

  private

  def params_chatroom
    params.require(:chatroom).permit(:receiver)
  end
end
