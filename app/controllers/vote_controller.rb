class VoteController < ApplicationController
  
  def create
    current_user.up_vote(Session.find(params[:id]))
    redirect_to sessions_url
  end  
  
end
