class SharksController < ApplicationController
  def index
    @sharks = Shark.all
  end

  def new; end

  def create
    @shark = Shark.new(shark_params)
    @shark.save
  end

  def edit
    @shark = Shark.find(params[:id])
  end

  def update
    @shark = Shark.find(params[:id])
    @shark.update shark_params
  end

  def show
    @shark = Shark.find(params[:id])
  end

  def destroy; end

  private

  def shark_params
    params.require(:shark).permit(:name, :facts)
  end
end
