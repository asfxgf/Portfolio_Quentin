class VideosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @videos = Video.all
  end

  def show
    @videos = Video.find(params[:id])
  end

  def new
    @video = Video.new
  end

  def create
    Video.create(video_params)
    redirect_to videos_path
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])
    @video.update(video_params)
    redirect_to videos_path
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to videos_path
  end

  private

  def video_params
    params.require(:video).permit(:title, :url, :description, :picture)
  end
end
