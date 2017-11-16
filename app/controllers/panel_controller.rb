class PanelController < ApplicationController
  def index
    @risks = Risk.all
  end
end
