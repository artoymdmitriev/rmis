class RisksController < ApplicationController
  before_action :set_risk, only: [:destroy, :show]
  before_action :risks_to_export, :export

  def index
    @risks = Risk.where(user_id: current_user.id).page(params[:page]).per(15)
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

  def export
    respond_to do |format|
      format.html
      format.csv do
        send_data @risks.to_csv
        response.headers['Content-Disposition'] = 'attachment; filename="risks.csv"'
      end
      format.xls {
        response.headers['Content-Disposition'] = 'attachment; filename="risks.xls"'
      }
      format.xlsx {
        response.headers['Content-Disposition'] = 'attachment; filename="risks.xlsx"'
      }
    end
  end

  def show

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

  def risks_to_export
    if empty_date?(params[:start_date]) && empty_date?(params[:end_date])
      @risks = Risk.all
    elsif empty_date?(params[:start_date])
      @risks = Risk.where("occured_at <= ?", params[:end_date])
    elsif empty_date?(params[:end_date])
      @risks = Risk.where("occured_at >= ?", params[:start_date])
    else
      @risks = Risk.where(occured_at: params[:start_date]..params[:end_date])
    end
  end

  def empty_date? date
    date == '' ? true : false
  end
end
