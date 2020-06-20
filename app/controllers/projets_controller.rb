class ProjetsController < ApplicationController
  before_action :set_projets, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    # @projets = Projet.all
    @projets = policy_scope(Projet)
  end

  def show
  end

  def new
    @projet = Projet.new
    authorize @projet
  end

  def create
    @projet = current_user.projets.build(projet_params)
    @projet.save
    redirect_to projets_path
    authorize @projet
  end

  def edit
  end

  def update
    @projet.update(projet_params)
    redirect_to projets_path
  end

  def destroy
    @projet.destroy
    redirect_to projets_path
  end

  private

  def set_projet
    @projets = Projet.find(params[:id])
    authorize projet
  end

  def projet_params
    params.require(:projet).permit(:title, :url, :description, :picture)
  end
end
