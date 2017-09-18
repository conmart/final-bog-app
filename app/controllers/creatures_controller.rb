class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
  end

  def show
    @creature = find_one
  end

  def create
    Creature.create(creature_params)
    redirect_to creatures_path
  end

  def edit
    @creature = find_one
  end

  def update
    find_one.update(creature_params)
    redirect_to creatures_path
  end

  def find_one
    creature = Creature.find(params[:id])
  end

  def destroy
    find_one.destroy
    redirect_to creatures_path
  end

  private
  def creature_params
    params.require(:creature).permit(:name, :description)
  end

end
