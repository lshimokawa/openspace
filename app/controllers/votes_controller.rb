class VotesController < ApplicationController
  load_and_authorize_resource

  def create
    @session = Session.find(params[:session_id])
    begin
      current_user.vote(current_event, @session)
      redirect_to event_sessions_path(current_event)
    rescue 
      redirect_to event_sessions_path(current_event), alert: "Tienes un maximo de 3 votos."
    end
  end

  def destroy
    #pending
    redirect_to event_sessions_path(current_event)
  end

end