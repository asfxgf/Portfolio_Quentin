class LivresController < ApplicationController
  def index
    @livres = Livre.all
  end

  def show
    @livre = Livre.find(params[:id])
  end

  def new
    @livre = Livre.new
  end

  def create
    Livre.create(livre_params)
    redirect_to livres_path
  end

  def edit
    @livre = Livre.find(params[:id])
  end

  def update
    @livre = Livre.find(params[:id])
    @livre.update(livre_params)
    redirect_to livres_path
  end

  def destroy
    @livre = Livre.find(params[:id])
    @livre.destroy
    redirect_to livres_path
  end

  private

  def livre_params
    params.require(:livre).permit(:title, :author, :url, :description)
  end
end
