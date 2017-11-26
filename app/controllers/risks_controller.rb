class RisksController < ApplicationController
  before_action :set_risk, only: [:destroy, :show, :edit, :update]
  before_action :risks_filtered_by_date, only: [:export, :stats]
  before_action :risks_filtered_by_user, only: [:export, :stats]

  def index
    @risks = Risk.all.order(created_at: :desc).page(params[:page]).per(15)
  end

  def new
    @risk = Risk.new
  end

  def create
    @risk = Risk.create(risk_params.merge(user_id: current_user.id))
    redirect_to risks_path
  end

  def destroy
    @risk.destroy
    redirect_to risks_path, notice: 'Риск был успешно удален.'
  end

  def export
    respond_to do |format|
      format.html
      format.csv do
        send_data @risks.to_csv, filename: 'risks.csv'
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

  def edit
  end

  def update
    @risk.update(risk_params)
    redirect_to risks_path
  end

  def import
    Risk.import(params[:file], user_id: current_user.id)
    redirect_to risks_path, notice: "Данные успешно загружены!"
  end

  def stats
    respond_to do |format|
      format.html
    end
  end

  private
  def set_risk
    @risk = Risk.includes(:user).find(params[:id])
  end

  def risk_params
    params.require(:risk).permit(:name, :description, :category,
    :occured_at, :danger_rate, :origin_type)
  end

  def risks_filtered_by_date
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
    (date.nil? || !date.present?) ? true : false
  end

  def risks_filtered_by_user
    if params[:only_my_risks].present?
      @risks = @risks.where(user_id: current_user.id)
    end
  end
end
