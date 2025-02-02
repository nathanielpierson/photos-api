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
  end
  def update
  end
  def delete
  end
end
