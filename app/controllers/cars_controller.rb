class CarsController < ApplicationController

  def index
    @car = Car.order("RANDOM()")
  end

  def new 
    @car = Car.new
  end

  def create
    Car.create(car_params)
    if @car.invalid?
      flash[:error] = '<strong>Could not save</strong the data you entered is invalid.'
    end
    redirect_to root_path
  end

  private

  def car_params
    params.require(:car).permit(:title, :description)
  end

end
