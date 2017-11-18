class StatsController < ApplicationController

  def index
    @risks = Risk.all
  end
end
