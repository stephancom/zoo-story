class AnimalsController < ApplicationController
  before_action :set_zoo, only: [:index]
  before_action :set_animal, only: [:show, :edit, :update, :destroy]

  def index
    @animals =  if @zoo
                  @animal = @zoo.animals.new
                  @zoo.animals.includes(:zoo, :species)
                else
                  Animal.all.includes(:zoo, :species)
                end
    respond_with @animals
  end

  def show
    respond_with @animal
  end

  def new
    @animal = Animal.new
    respond_with @animal
  end

  def edit
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.save
    respond_with @animal
  end

  def update
    @animal.update(animal_params)
    respond_with @animal
  end

  def destroy
    @animal.destroy
    respond_with @animal
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zoo
      @zoo = Zoo.find(params[:zoo_id]) if params.has_key?(:zoo_id)
    end

    def set_animal
      @animal = Animal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def animal_params
      params.require(:animal).permit(:name, :zoo_id, :species_id)
    end
end
