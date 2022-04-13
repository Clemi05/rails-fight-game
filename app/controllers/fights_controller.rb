class FightsController < ApplicationController
  require 'fight_arena'
  before_action :set_fighters, only: %i[result]

  def index
    @fighters = Fighter.all
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
    # need to redirect to index/homepage
    redirect_to fighters_path
  end

  def result
    @result = FightArena.result(@fighter1, @fighter2)
  end

  def set_fighters
    @fighter1 = Fighter.find_by(id: params['fighter']['1'])
    @fighter2 = Fighter.find_by(id: params['fighter']['2'])
  end
end
