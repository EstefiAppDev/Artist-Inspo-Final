class ThemesController < ApplicationController
  def index
    @themes = Theme.all.order({ :created_at => :desc })

    render({ :template => "themes/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @theme = Theme.where({:id => the_id }).at(0)

    render({ :template => "themes/show.html.erb" })
  end

  def create
    @theme = Theme.new
    @theme.description = params.fetch("query_description")
    @theme.theme_name = params.fetch("query_theme_name")

    if @theme.valid?
      @theme.save
      redirect_to("/themes", { :notice => "Theme created successfully." })
    else
      redirect_to("/themes", { :notice => "Theme failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    @theme = Theme.where({ :id => the_id }).at(0)

    @theme.description = params.fetch("query_description")
    @theme.theme_name = params.fetch("query_theme_name")

    if @theme.valid?
      @theme.save
      redirect_to("/themes/#{@theme.id}", { :notice => "Theme updated successfully."} )
    else
      redirect_to("/themes/#{@theme.id}", { :alert => "Theme failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    @theme = Theme.where({ :id => the_id }).at(0)

    @theme.destroy

    redirect_to("/themes", { :notice => "Theme deleted successfully."} )
  end
end
