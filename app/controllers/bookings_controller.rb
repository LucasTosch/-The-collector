class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(creator: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @player = User.find(params[:user_id])
    @booking = Booking.new
    @booking.creator = current_user
    @booking.player = @player
  end

  def create
    @booking = Booking.new(params_booking)
    @booking.player = User.find(params[:booking][:player_id])
    @booking.creator = current_user
    @booking.save!
    redirect_to user_booking_path(current_user, @booking.id)
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(result: params[:booking][:result])
    if @booking.result == current_user.username
      current_user.update(player_score: current_user.player_score + 1)
    else
      @booking.player.update(player_score: @booking.player.player_score + 1)
    end
    redirect_to user_bookings_path(current_user)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    # redirect_to bookings_path
  end

  private

  def params_booking
    params.require(:booking).permit(:player_id, :game_id, :booking_type, :date, :result)
  end
end
