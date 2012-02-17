class EventsController < ApplicationController

  def index
    @events = Event.all
  end
  
  def show
    @event = current_event
  end

  def new
    @Event = Event.new
  end

  def edit
    @Event = Event.find(params[:id])
  end

  def create
    @Event = Event.new(params[:Event])
    @Event.user = current_user
    if @Event.save
      redirect_to @Event
    else
      render action: "new"
    end
  end

  def update
    @Event = Event.find(params[:id])
    if @Event.update_attributes(params[:Event])
      redirect_to @Event
    else
      render action: "edit"
    end
  end

  def destroy
    @Event = Event.find(params[:id])
    @Event.destroy
    redirect_to events_url
  end

end
