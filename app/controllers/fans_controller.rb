class FansController < ApplicationController
  def index
    @fans = Fan.all.order({ :created_at => :desc })

    render({ :template => "fans/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @fan = Fan.where({:id => the_id }).at(0)

    render({ :template => "fans/show.html.erb" })
  end

  def create
    @fan = Fan.new
    @fan.painting_id = params.fetch("query_painting_id")
    @fan.user_id = params.fetch("query_user_id")

    if @fan.valid?
      @fan.save
      redirect_to("/fans", { :notice => "Fan created successfully." })
    else
      redirect_to("/fans", { :notice => "Fan failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    @fan = Fan.where({ :id => the_id }).at(0)

    @fan.painting_id = params.fetch("query_painting_id")
    @fan.user_id = params.fetch("query_user_id")

    if @fan.valid?
      @fan.save
      redirect_to("/fans/#{@fan.id}", { :notice => "Fan updated successfully."} )
    else
      redirect_to("/fans/#{@fan.id}", { :alert => "Fan failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    @fan = Fan.where({ :id => the_id }).at(0)

    @fan.destroy

    redirect_to("/fans", { :notice => "Fan deleted successfully."} )
  end
end
