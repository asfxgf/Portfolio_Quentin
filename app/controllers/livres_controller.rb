class LivresController < ApplicationController
  before_action :set_livre, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

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
    @livre = current_user.livres.build(livre_params)
    @livre.save
    redirect_to livres_path
    authorize @livre
  end

  def edit
  end

  def update
    @livre.update(livre_params)
    redirect_to livres_path
  end

  def destroy
    @livre.destroy
    redirect_to livres_path
  end

  private

  def set_livre
    @livre = Livre.find(params[:id])
    authorize @livre
  end

  def livre_params
    params.require(:livre).permit(:title, :author, :url, :description, :picture)
  end
end
