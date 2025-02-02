class PhotosController < ApplicationController
  def index
    photos = Photo.all
    render :index
  end
  def show
    @photo = Photo.find_by(id: params[:id])
    render :show
  end
  def create
    @photo = Photo.create (
      # @image_url: params[:image_url],
      # @alt_text: params[:alt_text]
      # render :show
    )
  end
  def update
    # @photo = Photo.find_by(id: params[:id])
    # @photo.update(
    #   @photo.image_url = params[:image_url],
    #   @photo.alt_text = params[:alt_text]
    # )
    # render :show
  end
  def delete
    photo = Photo.find_by(id: params[:id])
    photo.destroy
    render json: { Message: "Photo was deleted" }
  end
end
