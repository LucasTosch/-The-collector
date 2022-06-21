class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(creator: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @user = current_user
    @booking = Booking.new
    @booking.creator = @user
  end

  def create
    @booking = Booking.new(params_booking)
    @booking.creator = @user
    @booking.save
    # redirect_to user_booking_path(@booking)
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
