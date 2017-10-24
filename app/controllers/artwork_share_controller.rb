class ArtworkShareController < ApplicationController

  def create
    artworkshare = ArtworkShare.new(artwork_params)
 # replace the `artwork_attributes_here` with the actual attribute keys
 if (artworkshare.save)
   render json: artworkshare
 else
   render json: artworkshare.errors, status: :unprocessable_entity
 end
  end

  def destroy
    ArtworkShare.delete(params[:id])
  end

  private
  def artwork_params
    params.require(:artworkshare).permit(:viewer_id, :artwork_id)

  end
end
