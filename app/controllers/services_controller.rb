class ServicesController < ApplicationController

  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.save

    redirect_to service_path(service)
  end

  private

  def service_params
    params.require(:service).permit(:name, :fullname, :logo, :image, :definition, :option, :presample, :conditions, :plafond)
  end

end
