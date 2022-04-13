class FightsController < ApplicationController
  require 'fight_arena'
  before_action :set_fighters, only: %i[result]

  def index
    @fighters = Fighter.all
    @equipments = Equipment.all
  end

  def new
    @fight = Fight.new
  end

  def show
    @fight = Fight.find(params[:id])
  end

  def edit
    @fight = Fight.find(params[:id])
  end

  def destroy
    @fight = Fight.find(params[:id])
    @fight.destroy
    redirect_to fighters_path
  end

  def result
    @result = FightArena.result(@fighter1, @fighter2)
  end

  def set_fighters
    @fighter1 = Fighter.find_by(id: params['fighter']['1'])
    @fighter2 = Fighter.find_by(id: params['fighter']['2'])
  end

  # def set_equipments
  #   @equipment1 = Equipment.find_by(id:)
  #   @equipment2 = Equipment.find_by(id:)
  # end
end
