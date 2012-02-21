class VotingController < ApplicationController
  
  def create
    #TODO solo puede hacer un voto por sesión
    @session = Session.find(params[:id])
    current_user.up_vote!(@session)
    redirect_to event_session_path(current_event, @session)
  end  
  
end
