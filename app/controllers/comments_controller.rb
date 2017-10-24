class CommentsController < ApplicationController
  def create

  end

  def index
    author=User.find(params[:author_id]) if (params[:author_id])
    artwork=Artwork.find(params[:artwork_id]) if (params[:artwork_id])

    if (author && artwork)
      render json: author.comments.where( artwork_id: params[:artwork_id] )

    elsif(author)
        render json: author.comments
    elsif (artwork)
        render json: artwork.comments
    else
        render plain: "no author or artwork by that id"
    end


  end

  def destroy

  end
  private
  def Comments_params
    params.require(:comment).permit(:author_id, :artwork_id, :body)

  end
end
