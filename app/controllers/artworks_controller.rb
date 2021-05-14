class ArtworksController < ApplicationController
  def index
    if params.has_key?(:user_id)
      @artworks = Artwork.where(artist_id: params[:user_id])
      @artworks += Artwork.joins(:shared_viewers).where('artwork_shares.viewer_id = ?', params[:user_id])
    else
      @artworks = Artwork.all
    end

    render json: @artworks
  end

  def create
    artwork = Artwork.new(artwork_params)

    if artwork.save
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    artwork = Artwork.find(params[:id])

    if artwork
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    artwork = Artwork.find(params[:id])

    if artwork
      artwork.update(artwork_params)
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    artwork = Artwork.find(params[:id])
    artwork.destroy

    render json: artwork
  end

  private
  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end
end