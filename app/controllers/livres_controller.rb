class LivresController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_livre, only: [:show, :edit, :update, :destroy]


  def index
    # @livres = Livre.all
    @livres = policy_scope(Livre)
  end

  def show
  end

  def new
    @livre = Livre.new
    authorize @livre
  end

  def create
    Livre.create(livre_params)
    redirect_to livres_path
    authorize @livre
  end

  def edit
  end

  def update
    @livre.update(livre_params)
    redirect_to livres_path
    authorize @livre
  end

  def destroy
    @livre.destroy
    redirect_to livres_path
    authorize @livre
  end

  private

  def set_livre
    @livre = Livre.find(params[:id])
  end

  def livre_params
    params.require(:livre).permit(:title, :author, :url, :description, :picture)
  end
end
