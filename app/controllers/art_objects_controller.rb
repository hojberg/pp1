class ArtObjectsController < ApplicationController
	respond_to :json, :html

  def index
    respond_with ArtObject.all
  end

  def show
    respond_with ArtObject.find(params[:id])
  end

  def create
    respond_with ArtObject.create(params[:art_object])
  end

  def update
    respond_with ArtObject.update(params[:id], params[:art_object])
  end

  def destroy
    respond_with ArtObject.destroy(params[:id])
  end
end
