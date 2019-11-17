class BillboardsController < ApplicationController

before_action :set_billboard, only: [:show, :edit, :update, :destroy]

  def index
    @billboards = Billboard.all 
    @songs = Song.all 
    
  end

  def show 
    @songs = Song.all 
    #binding.pry
  end

  def new 
    @billboard = Billboard.new 
  end 

  def create
    @billboard = Billboard.new(artist_params)
    if @billboard.save 
      redirect_to billboards_path 
    else 
      render :new
    end 
  end 

  def edit 

  end 

  def update
    if @billboard.update(billboard_params)
      redirect_to billboard_path(@billboard) 
      # @person shortcut show page for person
    else 
      render :edit
    end 
  end 

  def destroy
    @billboard.destroy
    # Artist.destroy_all
    # ActiveRecord::Base.connection.reset_pk_sequence!(Artist.table_name)
    redirect_to billboards_path 
  end 

  private 

  def set_billboard
    @billboard = Billboard.find(params[:id]) 
  end 

  def artist_params
    params.require(:billboard).permit(:name) 
  end 
  
  # def set_song
  #   binding.pry 
  #   @song = Song.find(params[:song_id])
  # end
end
