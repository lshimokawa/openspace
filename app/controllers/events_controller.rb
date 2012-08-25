class EventsController < ApplicationController
  load_and_authorize_resource
  skip_authorization_check :only => [:menu, :tweets]

  def menu
    event = Event.find(params[:id])
    session[:event_id] = event.id
  end

  def tweets
    #TODO implementar cache
    @tweets = Twitter.search(current_event.hashtag).map{ |t| "#{t.from_user}: #{t.text}" }
  end

  def restart_voting
    @event = Event.find(params[:id])
    Vote.delete_all(event_id: @event.id)
    Session.where(event_id: @event.id).update_all(votes_count: 0)
    redirect_to @event
  end
  
  def index
    @events = Event.all
  end

  def voting 
    @sessions = Session.where(event_id: current_event.id).order(:title)
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
    session[:event_id] = @event.id
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      redirect_to @event
    else
      render action: "new"
    end
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      redirect_to @event
    else
      render action: "edit"
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_url
  end

end
