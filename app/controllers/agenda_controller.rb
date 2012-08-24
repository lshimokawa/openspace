class AgendaController < ApplicationController
  load_and_authorize_resource
  
  def index
    @agenda = Event.find(params[:event_id]).agendas.order(:starts)
  end
  
  def show
    @agenda = Agenda.find(params[:id])
    session[:agenda_id] = params[:id]
  end

  def new
    @agenda = Agenda.new
  end
  
  def edit
    @agenda = Agenda.find(params[:id])
  end

  def create
    @agenda = Agenda.new(params[:agenda])
    @agenda.event = current_event
    if @agenda.save
      redirect_to event_agenda_path(current_event)
    else
      render action: "new"
    end
  end
  
  def update
    @agenda = Agenda.find(params[:id])
    if @agenda.update_attributes(params[:agenda])
      redirect_to event_agenda_path(current_event)
    else
      render action: "edit"
    end
  end

  def destroy
    @agenda = Agenda.find(params[:id])
    @agenda.destroy
    redirect_to event_agenda_index_url(current_event)
  end
  
end
