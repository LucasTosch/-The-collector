class UsersController < ApplicationController
  def index
    @users = User.all
    # @users.each do |x|
    #   if x.trader == true
      if params[:query].present?
        sql_query = " \
        games.name ILIKE :query \
        "
        @users = User.joins(:games).where(sql_query, query: "%#{params[:query]}%")
        if params[:filter].present?
          @users = @users.where(player: true) if params[:filter] == "player"
          @users = @users.where(trader: true) if params[:filter] == "trader"
        end
      elsif params[:filter].present?
        @users = User.where(player: true) if params[:filter] == "player"
        @users = User.where(trader: true) if params[:filter] == "trader"
      else
        @users = User.all
      end
        @markers = @users.geocoded.map do |user|
          {
            lat: user.latitude,
            lng: user.longitude,
            image_url: user.trader ? helpers.asset_url("markers-tcg-dark.png") : helpers.asset_url("markers-tcg.png") # faire une fonction appelée pour faire 3 cas diff

          }
        end
      # elsif x.trader == false
      #   @markers = @users.geocoded.map do |user|
      #   {
      #     lat: user.latitude,
      #     lng: user.longitude,
      #     info_window: render_to_string(partial: "info_window", locals: { user: user }),
      #     image_url: helpers.asset_url("markers-tcg.png")
      #   }
        # end
      # end
    # end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    # redirect_to root_path
    @chatroom = Chatroom.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render :home
  end

  def ranking
    @users = User.all
  end

  private


  def user_params
    params.require(:user).permit(:description, :image, :player, :trader, :address, :player_score, :trader_score, :trust_score)
  end
end
