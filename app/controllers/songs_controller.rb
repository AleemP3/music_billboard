class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  before_action :set_artist 
 

  def index
    @songs = @artist.songs
    
  end

  def show
  end

  def new 
    @song = Song.new 
   
  end 

  def create
    @song = @artist.songs.new(song_params)
    if @song.save 
      redirect_to artist_song_path(@artist, @song) 
    else 
      render :new
    end 

  end 

  def edit 

  end 

  def update
    if @song.update(song_params)
      redirect_to artist_song_path(@artist, @song) 
      # @person shortcut show page for person
    else 
      render :edit
    end 
  end 

  def destroy
    @song.destroy
    # Artist.destroy_all
    # ActiveRecord::Base.connection.reset_pk_sequence!(Artist.table_name)
    redirect_to artist_songs_path(@artist)

  end 

  private 

  def set_artist
    @artist = Artist.find(params[:artist_id]) 
  end 

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :duration, :artist_name)
  end 

end
