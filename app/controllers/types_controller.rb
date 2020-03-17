class TypesController < ApplicationController
  def index
    @types = Type.all.order({ :created_at => :desc })

    render({ :template => "types/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @type = Type.where({:id => the_id }).at(0)

    render({ :template => "types/show.html.erb" })
  end

  def create
    @type = Type.new
    @type.theme_id = params.fetch("query_theme_id")
    @type.genre_id = params.fetch("query_genre_id")

    if @type.valid?
      @type.save
      redirect_to("/types", { :notice => "Type created successfully." })
    else
      redirect_to("/types", { :notice => "Type failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    @type = Type.where({ :id => the_id }).at(0)

    @type.theme_id = params.fetch("query_theme_id")
    @type.genre_id = params.fetch("query_genre_id")

    if @type.valid?
      @type.save
      redirect_to("/types/#{@type.id}", { :notice => "Type updated successfully."} )
    else
      redirect_to("/types/#{@type.id}", { :alert => "Type failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    @type = Type.where({ :id => the_id }).at(0)

    @type.destroy

    redirect_to("/types", { :notice => "Type deleted successfully."} )
  end
end
