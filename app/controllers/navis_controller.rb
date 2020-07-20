class NavisController < ApplicationController
  def index
  end

  def create
    Cal.create(cal_parameter)
    redirect_to cals_path
  end
end
