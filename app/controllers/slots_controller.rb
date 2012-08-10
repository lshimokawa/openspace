class SlotsController < ApplicationController
  
  def show
    @slot = Slot.find(params[:id])
  end

  def new
    @slot = Slot.new
    
  end

  def create
    @slot = Slot.new(params[:slot])
    @slot.agenda_id = session[:agenda_id]
    if @slot.save
      redirect_to event_agenda_path(current_event, session[:agenda_id])
    else
      render action: "new"
    end
  end
  
  def edit
    @slot = Slot.find(params[:id])
  end
  
  def update
    @slot = Slot.find(params[:id])
    @slot.agenda_id = session[:agenda_id]
    if @slot.update_attributes(params[:slot])
      redirect_to event_agenda_path(current_event, session[:agenda_id])
    else
      render action: "edit"
    end
  end

  def destroy
    @slot = Slot.find(params[:id])
    @slot.destroy
    redirect_to event_agenda_path(current_event, session[:agenda_id])
  end

end