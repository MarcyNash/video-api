class VideosController < ApplicationController
  # GET /videos
  def index
    puts(request.params)
    if params[:artist]
      @videos = Video.where(artist_title: params[:artist])
    elsif params[:song]
      @videos = Video.where(song_title: params[:song])
    elsif params[:city]
      @videos = Video.where(city_title: params[:city])
    else
      @videos = Video.all
    end

    render json: @videos
  end
end
