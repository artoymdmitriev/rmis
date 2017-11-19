class RisksController < ApplicationController
  before_action :set_risk, only: [:destroy, :show]

  def index
    @risks = Risk.where(user_id: current_user.id).page(params[:page]).per(9)
    respond_to do |format|
      format.html
      format.csv { send_data @risks.to_csv }
      format.xls
    end
  end

  def new
    @risk = Risk.new
  end

  def create
    @risk = Risk.create(risk_params.merge(user_id: current_user.id))
  end

  def destroy
    @risk.destroy
    redirect_to risks_path, notice: 'Риск был успешно удален.'
  end

  def show

  end

  def download

  end

  def import
    Risk.import(params[:file], user_id: current_user.id)
    redirect_to risks_path, notice: "Данные успешно загружены!"
  end

  private
  def set_risk
    @risk = Risk.find(params[:id])
  end

  def risk_params
    params.require(:risk).permit(:name, :description, :category,
    :occured_at, :danger_rate, :origin_type)
  end
end
