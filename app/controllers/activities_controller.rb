class ActivitiesController < ApplicationController
  def new
    @service = Service.find(params[:service_id])
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @service = Service.find(params[:service_id])
    @activity.service = @service
    if @activity.save
      redirect_to service_path(@service)
    else
      render :new
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:sample)
end
