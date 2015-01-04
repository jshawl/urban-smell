class SmellsController < ApplicationController
  def index
    @smells = Smell.all
  end
  def show
    @smell = Smell.find( params[:id] )
  end
end