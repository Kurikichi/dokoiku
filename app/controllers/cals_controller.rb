class CalsController < ApplicationController

  def index
    @cals = Cal.all
  end

  def new
    @cal = Cal.new
  end

  def show
    @cal = Cal.find(params[:id])
  end

  def create
    Cal.create(cal_parameter)
    redirect_to cals_path
  end

  def destroy
    @cal = Cal.find(params[:id])
    @cal.destroy
    redirect_to cals_path, notice:"削除しました"
  end

  def edit
    @cal = Cal.find(params[:id])
  end

  def update
    @cal = Cal.find(params[:id])
    if @cal.update(cal_parameter)
      redirect_to cals_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  private

  def cal_parameter
    params.require(:cal).permit(:title, :content, :start_time)
  end

end