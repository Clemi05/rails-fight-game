class FightersController < ApplicationController
  before_action :set_fighter, only: %i[show edit update destroy]
  def index
    @fighters = Fighter.all
  end

  def new
    @fighter = Fighter.new
  end

  def show
    @fighter = Fighter.find(params[:id])
  end

  def create
    @fighter = Fighter.new(fighter_params)
    if @fighter.save
      redirect_to fighter_path(@fighter)
    else
      render 'new'
    end
  end

  def edit
    @fighter = Fighter.find(params[:id])
  end

  def update
    @fighter = Fighter.find(params[:id])
    @fighter.update(fighter_params)

    redirect_to fighter_path(@fighter)
  end

  def destroy
    @fighter.destroy
    redirect_to fighters_path
  end

  private

  def set_fighter
    @figther = Fighter.find(params[:id])
  end

  def fighter_params
    params.require(:fighter).permit(:name, :hp, :attack)
  end
end
