class UnitsController < ApplicationController
    def update
      unit = Unit.find(params[:id])
      if unit.update(unit_params)
        render json: {data: unit, status: 200}
      else
        render json: unit.errors.full_messages
      end
    end

    private

    def unit_params
      params.require(:unit).permit(:isAvailable, :location, :user_id)
    end
end
