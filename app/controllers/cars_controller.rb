class CarsController < ApplicationController

  def index
    @car = Car.all.sample
  end

  def new 
    @car = Car.new
  end

  def create
    @car = Car.create(car_params)
    if @car.invalid?
      flash[:error] = '<strong>Could not save</strong the data you entered is invalid.'
      redirect_to new_car_path
    else
      redirect_to root_path
    end
  end

  private

  def car_params
    params.require(:car).permit(:title, :description)
  end

end
