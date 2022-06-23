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
    redirect_to user_booking_path(current_user.id, @booking.id)
  end

  def update
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    # redirect_to bookings_path
  end

  private

  def params_booking
    params.require(:booking).permit(:player_id, :game_id, :booking_type, :date)
  end
end
