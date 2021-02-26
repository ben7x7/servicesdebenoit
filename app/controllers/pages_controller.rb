class PagesController < ApplicationController
  def home
    @services = Service.all
  end

  def cookys
  end

  def mentions
  end

  def confidentialites
  end
end
