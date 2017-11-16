class RisksController < ApplicationController

  def new
    @risk = Risk.new
  end

  def create
    @risk = Risk.create(risk_params.merge(user_id: current_user.id))
  end

  def update

  end

  def destroy
  end

  private
  def risk_params
    params.require(:risk).permit(:name, :description, :category,
    :occured_at, :danger_rate, :origin_type)
  end
end
