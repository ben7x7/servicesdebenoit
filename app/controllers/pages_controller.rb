class PagesController < ApplicationController
  def home
    @services = Service.all.sort
  end

  def cookys
  end

  def mentions
  end

  def confidentialites
  end
end
