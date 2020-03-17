class MessagesInWorksController < ApplicationController
  def index
    @messages_in_works = MessagesInWork.all.order({ :created_at => :desc })

    render({ :template => "messages_in_works/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @messages_in_work = MessagesInWork.where({:id => the_id }).at(0)

    render({ :template => "messages_in_works/show.html.erb" })
  end

  def create
    @messages_in_work = MessagesInWork.new
    @messages_in_work.painting_id = params.fetch("query_painting_id")
    @messages_in_work.theme_id = params.fetch("query_theme_id")

    if @messages_in_work.valid?
      @messages_in_work.save
      redirect_to("/messages_in_works", { :notice => "Messages in work created successfully." })
    else
      redirect_to("/messages_in_works", { :notice => "Messages in work failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    @messages_in_work = MessagesInWork.where({ :id => the_id }).at(0)

    @messages_in_work.painting_id = params.fetch("query_painting_id")
    @messages_in_work.theme_id = params.fetch("query_theme_id")

    if @messages_in_work.valid?
      @messages_in_work.save
      redirect_to("/messages_in_works/#{@messages_in_work.id}", { :notice => "Messages in work updated successfully."} )
    else
      redirect_to("/messages_in_works/#{@messages_in_work.id}", { :alert => "Messages in work failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    @messages_in_work = MessagesInWork.where({ :id => the_id }).at(0)

    @messages_in_work.destroy

    redirect_to("/messages_in_works", { :notice => "Messages in work deleted successfully."} )
  end
end
