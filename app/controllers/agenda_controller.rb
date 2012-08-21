class AgendaController < ApplicationController
  load_and_authorize_resource
  
  def index
    @agenda = Event.find(params[:event_id]).agendas.order(:starts)
  end
  
  def show
    @agenda = Agenda.find(params[:id])
    session[:agenda_id] = params[:id]
  end
  
  def edit
    agenda_id = params[:agenda__id]
    @agenda = Agenda.find(agenda_id)
    @slots = Slot.where(agenda_id: agenda_id)
  end
  
  def update
  end
  
end
