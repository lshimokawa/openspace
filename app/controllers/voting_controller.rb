class VotingController < ApplicationController
  
  def create
    #TODO Limitar el número de votos
    current_user.up_vote(Session.find(params[:id]))
    redirect_to sessions_url
  end  
  
end
