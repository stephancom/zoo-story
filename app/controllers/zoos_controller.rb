class ZoosController < ApplicationController
  before_action :set_zoo, only: [:show, :edit, :update, :destroy]

  def index
    @zoos = Zoo.all
    respond_with @zoos
  end

  def show
    respond_with @zoo
  end

  def new
    @zoo = Zoo.new
    respond_with @zoo
  end

  def edit
  end

  def create
    @zoo = Zoo.new(zoo_params)
    @zoo.save
    respond_with @zoo
  end

  def update
    @zoo.update(zoo_params)
    respond_with @zoo
  end

  def destroy
    @zoo.destroy
    respond_with @zoo
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zoo
      @zoo = Zoo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zoo_params
      params.require(:zoo).permit(:name)
    end
end