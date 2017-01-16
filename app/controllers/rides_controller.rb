class RidesController < ApplicationController

  def create
  	#raise params.inspect
  	@ride=Ride.create(user_id:params[:user_id],attraction_id:params[:attraction_id])
  	redirect_to "/users/#{@ride.user.id}",notice: @ride.take_ride
  end
end