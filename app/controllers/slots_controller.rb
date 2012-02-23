class SlotsController < ApplicationController
  
  def index
    agenda_id = params[:agenda_id]
    @agenda = Agenda.find(agenda_id)
    @slots = Slot.where(agenda_id: agenda_id)
  end
  
  def edit
  end

end
