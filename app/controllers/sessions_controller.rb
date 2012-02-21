class SessionsController < ApplicationController

  def index
    @sessions = Session.order(:title)
  end
  
  def show
    @session = Session.find(params[:id])
  end

  def new
    @session = Session.new
  end

  def edit
    @session = Session.find(params[:id])
  end

  def create
    @session = Session.new(params[:session])
    @session.user = current_user
    @session.event_id = current_event.id
    if @session.save
      redirect_to event_session_path(current_event, @session)
    else
      render action: "new"
    end
  end

  def update
    @session = Session.find(params[:id])
    if @session.update_attributes(params[:session])
      redirect_to event_session_path(current_event, @session)
    else
      render action: "edit"
    end
  end

  def destroy
    @session = Session.find(params[:id])
    @session.destroy
    redirect_to event_sessions_url(current_event)
  end
end