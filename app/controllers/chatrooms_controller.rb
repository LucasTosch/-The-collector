class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.where(sender: current_user) && Chatroom.where(receiver: current_user)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @booking = Booking.new
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    chatroom = Chatroom.find_by(sender: current_user, receiver_id: params_chatroom[:receiver].to_i)
    chatroom2 = Chatroom.find_by(receiver: current_user, sender_id: params_chatroom[:receiver].to_i)
    if chatroom
      redirect_to chatroom_path(chatroom)
    elsif chatroom2
      redirect_to chatroom_path(chatroom2)
    else
      @chatroom = Chatroom.new(receiver_id: params_chatroom[:receiver].to_i)
      @chatroom.sender = current_user
      @chatroom.save
      redirect_to chatroom_path(@chatroom)
    end
  end

  def destroy
    @chatroom = Chatroom.find(params[:id])
    @chatroom.destroy
    redirect_to chatrooms_path
  end

  private

  def params_chatroom
    params.require(:chatroom).permit(:receiver)
  end
end
