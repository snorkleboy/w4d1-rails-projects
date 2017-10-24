class ArtworksController < ApplicationController

  def index
    user=User.find(params[:id])
    if (user)
        artwork=user.artworks+ user.shared_artworks
        render json: artworks
    # else
    #   render json: Artwork.all
    end
  end

  def create
    artwork = Artwork.new(artwork_params)
 # replace the `artwork_attributes_here` with the actual attribute keys
 if (artwork.save)
   render json: artwork
 else
   render json: artwork.errors, status: :unprocessable_entity
 end
  end

 def show
   render json: Artwork.find(params[:id])

 end
 def destroy
   Artwork.delete(params[:id])
 end
 def update
   artwork=Artwork.find(params[:id])
   artwork.update(artwork_params)
 end

 private
 def artwork_params
   params.require(:artwork).permit(:title, :image_url, :artist_id)

 end

end
