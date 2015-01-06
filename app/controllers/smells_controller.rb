class SmellsController < ApplicationController
  def index
    @smells = Smell.all
  end
  def show
    @smell = Smell.find(params[:id])
  end
  def destroy
    @smell = Smell.find(params[:id])
    @smell.destroy
    redirect_to smells_path
  end
  def new
    @smell = Smell.new
  end
  def create
    # raise params.to_yaml
    @smell = Smell.new( smell_params )
    if @smell.save
      redirect_to @smell
    end
  end
  def edit
    @smell = Smell.find( params[:id] )
  end
  def update
    @smell = Smell.find( params[:id] )
    if @smell.update( smell_params )
      redirect_to @smell
    end
  end
 
  private

  def smell_params
    params.require(:smell).permit(:title, :image_url, :location_url)
  end
end
