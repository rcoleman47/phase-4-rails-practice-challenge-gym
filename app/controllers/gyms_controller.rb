class GymsController < ApplicationController

  def show
    gym = Gym.find(params[:id])
    render json: gym
  end

  def destroy
    gym = Gem.find(params[:id])
    gym.destroy
    head :no_content
  end
end
