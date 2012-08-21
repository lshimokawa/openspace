# Controller de las sesiones
class SessionsController < ApplicationController
  load_and_authorize_resource

  # vota por una sesion una sola vez
  # usa el metodo up_vote de cancan
  # el ! al final del metodo asegura que no cause una
  # excepcion
  def vote
    @session = Session.find(params[:id])
    current_user.up_vote!(@session)
    redirect_to event_session_path(current_event, @session)
  end

  # remueve el voto de una sesion por el presente usuario
  # usa el metodo unvote de cancan
  # el ! al final del metodo asegura que no cause una
  # excepcion
  def unvote
    @session = Session.find(params[:id])
    current_user.unvote!(@session)
    redirect_to event_session_path(current_event, @session)
  end
  
  def index
    @sessions = Session.where(event_id: current_event.id).order(:title)
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
      redirect_to event_session_path(current_event)
    else
      render action: "new"
    end
  end

  def update
    @session = Session.find(params[:id])
    if @session.update_attributes(params[:session])
      redirect_to event_session_path(current_event)
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