class StylesController < ApplicationController
  def index
    @styles = Style.all.order({ :created_at => :desc })

    render({ :template => "styles/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @style = Style.where({:id => the_id }).at(0)

    render({ :template => "styles/show.html.erb" })
  end

  def create
    @style = Style.new
    @style.artist_id = params.fetch("query_artist_id")
    @style.theme_id = params.fetch("query_theme_id")
    @style.style_name = params.fetch("query_style_name")

    if @style.valid?
      @style.save
      redirect_to("/styles", { :notice => "Style created successfully." })
    else
      redirect_to("/styles", { :notice => "Style failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    @style = Style.where({ :id => the_id }).at(0)

    @style.artist_id = params.fetch("query_artist_id")
    @style.theme_id = params.fetch("query_theme_id")
    @style.style_name = params.fetch("query_style_name")

    if @style.valid?
      @style.save
      redirect_to("/styles/#{@style.id}", { :notice => "Style updated successfully."} )
    else
      redirect_to("/styles/#{@style.id}", { :alert => "Style failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    @style = Style.where({ :id => the_id }).at(0)

    @style.destroy

    redirect_to("/styles", { :notice => "Style deleted successfully."} )
  end
end
