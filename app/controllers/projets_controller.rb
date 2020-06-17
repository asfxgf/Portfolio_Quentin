class ProjetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @projets = Projet.all
  end

  def show
    @projets = Projet.find(params[:id])
  end

  def new
    @projet = Projet.new
  end

  def create
    Projet.create(projet_params)
    redirect_to projets_path
  end

  def edit
    @projet = Projet.find(params[:id])
  end

  def update
    @projet = Projet.find(params[:id])
    @projet.update(projet_params)
    redirect_to projets_path
  end

  def destroy
    @projet = Projet.find(params[:id])
    @projet.destroy
    redirect_to projets_path
  end

  private

  def projet_params
    params.require(:projet).permit(:title, :url, :description, :picture)
  end
end
