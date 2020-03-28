class PaintingsController < ApplicationController
  
  def all_paintings
    @paintings = Painting.all.order({ :title => :asc })

    render({ :template => "paintings/index_experiment.html.erb" })
  end

  def index 
    
    @q = Painting.ransack(params[:q])
    @paintings = @q.result(:distinct => true).includes(:genre, :theme)
    # @paintmedium = @q.result.uniq(&:paint_medium)

    render({ :template => "paintings/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @painting = Painting.where({:id => the_id }).at(0)

    render({ :template => "paintings/show.html.erb" })
  end

  def create
    @painting = Painting.new
    
    @painting.title = params.fetch("query_title")
    @painting.date = params.fetch("query_date_completed")
    @painting.paint_medium = params.fetch("query_paint_medium")
    # @painting.theme_id = params.fetch("query_theme_id")
    @painting.artist_id = params.fetch("query_artist_id")
    @painting.genre_id = params.fetch("query_genre_id")
    @painting.image = params.fetch("input_image")

    if @painting.valid?
      @painting.save
      redirect_to("/paintings", { :notice => "Painting created successfully." })
    else
      redirect_to("/paintings", { :notice => "Painting failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    @painting = Painting.where({ :id => the_id }).at(0)

    @painting.title = params.fetch("query_title")
    @painting.date = params.fetch("query_date_completed")
    @painting.paint_medium = params.fetch("query_paint_medium")
    @painting.theme_id = params.fetch("query_theme_id")
    @painting.artist_id = params.fetch("query_artist_id")
    @painting.genre_id = params.fetch("query_genre_id")
    @painting.image = params.fetch("input_image")

    if @painting.valid?
      @painting.save
      redirect_to("/paintings/#{@painting.id}", { :notice => "Painting updated successfully."} )
    else
      redirect_to("/paintings/#{@painting.id}", { :alert => "Painting failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    @painting = Painting.where({ :id => the_id }).at(0)

    @painting.destroy

    redirect_to("/paintings", { :notice => "Painting deleted successfully."} )
  end

  def add_save

    @save = Fan.new
    @save.user_id = session.fetch(:user_id)
    @save.painting_id = params["query_painting_id"]
    @save.save
    
    redirect_to("/paintings/#{@save.painting_id}")
  end

end
