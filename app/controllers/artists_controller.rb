class ArtistsController < ApplicationController
  def index
    @artists = Artist.all.order({ :created_at => :desc })

    render({ :template => "artists/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @artist = Artist.where({:id => the_id }).at(0)

    render({ :template => "artists/show.html.erb" })
  end

  def create
    @artist = Artist.new
    @artist.artist_name = params.fetch("query_artist_name")
    @artist.artist_dob = params.fetch("query_artist_dob")
    @artist.genre_id = params.fetch("query_genre_id")

    if @artist.valid?
      @artist.save
      redirect_to("/artists", { :notice => "Artist created successfully." })
    else
      redirect_to("/artists", { :notice => "Artist failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    @artist = Artist.where({ :id => the_id }).at(0)

    @artist.artist_name = params.fetch("query_artist_name")
    @artist.artist_dob = params.fetch("query_artist_dob")
    @artist.genre_id = params.fetch("query_genre_id")

    if @artist.valid?
      @artist.save
      redirect_to("/artists/#{@artist.id}", { :notice => "Artist updated successfully."} )
    else
      redirect_to("/artists/#{@artist.id}", { :alert => "Artist failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    @artist = Artist.where({ :id => the_id }).at(0)

    @artist.destroy

    redirect_to("/artists", { :notice => "Artist deleted successfully."} )
  end
end
