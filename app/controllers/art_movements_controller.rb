class ArtMovementsController < ApplicationController
  def index
    @art_movements = ArtMovement.all.order({ :created_at => :desc })

    render({ :template => "art_movements/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @art_movement = ArtMovement.where({:id => the_id }).at(0)

    render({ :template => "art_movements/show.html.erb" })
  end

  def create
    @art_movement = ArtMovement.new
    @art_movement.genre_name = params.fetch("query_genre_name")

    if @art_movement.valid?
      @art_movement.save
      redirect_to("/art_movements", { :notice => "Art movement created successfully." })
    else
      redirect_to("/art_movements", { :notice => "Art movement failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    @art_movement = ArtMovement.where({ :id => the_id }).at(0)

    @art_movement.genre_name = params.fetch("query_genre_name")

    if @art_movement.valid?
      @art_movement.save
      redirect_to("/art_movements/#{@art_movement.id}", { :notice => "Art movement updated successfully."} )
    else
      redirect_to("/art_movements/#{@art_movement.id}", { :alert => "Art movement failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    @art_movement = ArtMovement.where({ :id => the_id }).at(0)

    @art_movement.destroy

    redirect_to("/art_movements", { :notice => "Art movement deleted successfully."} )
  end
end
