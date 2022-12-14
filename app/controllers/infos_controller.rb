class InfosController < ApplicationController

  def index
    @infos = Info.all

  end

  def show
    @info = Info.find(params[:id])
  end

  def new
    @info = Info.new
  end

  def create
    @info = Info.new(info_params)
    if @info.save
      redirect_to infos_path(@info)
    else
      render :new
    end
  end

  def destroy
    @info = Info.find(params[:id])
    @info.destroy
    redirect_to infos_path
  end

  private

  def info_params
    params.require(:info).permit(:taille, :poids, :name)
  end


end
