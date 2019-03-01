class PhotosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :edit, :create, :update, :destroy]

  # GET /albums
  # GET /albums.json
  def index
    @photos = Photo.all
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
    # @photos = Album.photo(params[:id])
    @photos = Photo.all

  end

  # GET /albums/new
  def new
    @photo = Photo.new
    @album = Album.find(params[:album_id])

  end

  # GET /albums/1/edit
  def edit
  end

  # POST /albums
  # POST /albums.json
  def create
    @photo = Photo.new(photo_params)
    @photo.save
  end

  # PATCH/PUT /albums/1
  # PATCH/PUT /albums/1.json
  def update

  end

  # DELETE /albums/1
  # DELETE /albums/1.json
  def destroy
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to albums_url, notice: 'Album was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @photo = Photo.find(params[:id])
    end

      def photo_params
      params.require(:photo).permit(:title, :photos_attributes => [:album_id, :image])
      # params.require(:album).permit(:title, :description, :photo)
    end
end
