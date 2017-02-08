class LogsController < ApplicationController

  def index
    @logs = Log.all
  end

  def create
    @log = Log.new(log_params)

    if @log.save
      render json: @log
    else
      render json: @log.errors, status: :unprocessable_entity
    end
  end

  private

    def log_params
      params.require(:log).permit(
        :jump_number,
        :date,
        :location,
        :aircraft,
        :equipment,
        :altitude,
        :delay_time,
        :total_time,
        :maneuver,
        :description,
        :signature
      )
    end
end
