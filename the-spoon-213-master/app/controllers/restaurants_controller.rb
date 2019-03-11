class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show, :edit, :update, :destroy]

  # GET  /restaurants
  def index
    @restaurants = Restaurant.all
  end

  # GET  /restaurants/:id
  def show
  end

  # GET  /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # POST /restaurants
  # {
  #   "restaurant"=> {
  #     "name"=>"Pizza Nico",
  #     "address"=>"123 cours Balguerie",
  #     "stars"=>"5"
  #   }
  # }
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant), notice: "Your restaurant has been created!"
    else
      render :new
    end
  end

  # GET  /restaurants/:id/edit
  def edit
  end

  # PATCH  /restaurants/:id
  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  # DELETE /restaurants/:id
  def destroy
    @restaurant.destroy
    redirect_to root_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :stars, :address)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
