class AttractionsController < ApplicationController
  def index
   @attractions= Attraction.all
  end

  def create
    attraction=Attraction.create(set_params)
    if attraction 
      redirect_to attraction ,notice: "#{attraction} has been created successfuly."
    else 
      render :new
    end
  end

  def edit
    @attraction=Attraction.find(params[:id])
  end

  def update
    @attraction=Attraction.find(params[:id])
    if @attraction.update(set_params)
      redirect_to @attraction ,notice: "#{@attraction} has been updated successfuly."
    else 
      render :edit
    end

  end

  def destroy
  end

  def new
    @attraction=Attraction.new
  end

  def show
   @attraction=Attraction.find(params[:id])
  end
  private
   def set_params
     params.require(:attraction).permit(:name,:happiness_rating,:nausea_rating, :min_height)
   end
end
