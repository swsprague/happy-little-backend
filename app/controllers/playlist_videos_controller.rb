# frozen_string_literal: true

class PlaylistVideosController < OpenReadController
  before_action :set_playlist_video, only: %i[show update destroy]

  # GET /playlist_videos
  def index
    @playlist_videos = PlaylistVideo.all

    render json: @playlist_videos
  end

  # GET /playlist_videos/1
  def show
    render json: @playlist_video
  end

  # POST /playlist_videos
  def create
    @playlist_video = PlaylistVideo.new(playlist_video_params)

    if @playlist_video.save
      render json: @playlist_video, status: :created, location: @playlist_video
    else
      render json: @playlist_video.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /playlist_videos/1
  def update
    if @playlist_video.update(playlist_video_params)
      render json: @playlist_video
    else
      render json: @playlist_video.errors, status: :unprocessable_entity
    end
  end

  # DELETE /playlist_videos/1
  def destroy
    @playlist_video.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_playlist_video
    @playlist_video = PlaylistVideo.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def playlist_video_params
    params.require(:playlist_video).permit(:playlist_id, :video_id)
  end
end
