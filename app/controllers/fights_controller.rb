class FightsController < ApplicationController
  before_action :set_fight, only: %i[show]

  def index
    @fights = Fight.all
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

  private

  def set_fight
    @fight = Fight.includes(:winner, :loser).find(params[:id])
  end
end
