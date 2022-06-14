class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = Chatroom.new(params_chatroom)
    @chatroom.save
    redirect_to chatroom_path(@chatroom)
  end

  private

  def params_chatroom
    params.require(:chatroom).permit(:name)
  end
end
