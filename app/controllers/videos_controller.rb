class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    # @videos = Video.all
    @videos = policy_scope(Video)
  end

  def show
  end

  def new
    @video = Video.new
    authorize @video
  end

  def create
    @video = current_user.videos.build(video_params)
    @video.save
    redirect_to videos_path
    authorize @video
  end

  def edit
  end

  def update
    @video.update(video_params)
    redirect_to videos_path
  end

  def destroy
    @video.destroy
    redirect_to videos_path
  end

  private

  def set_video
    @video = Video.find(params[:id])
    authorize @video
  end

  def video_params
    params.require(:video).permit(:title, :url, :description)
  end
end
