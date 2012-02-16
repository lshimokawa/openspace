class VotingController < ApplicationController
  
  def create
    #TODO solo puede hacer un voto por sesión
    current_user.up_vote(Session.find(params[:id]))
    redirect_to sessions_url
  end  
  
end
