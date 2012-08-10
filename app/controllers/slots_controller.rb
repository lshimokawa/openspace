class SlotsController < ApplicationController
  
  def show
    @slot = Slot.find(params[:id])
  end

  def new
    @slot = Slot.new
    session[:agenda_id] = params[:agenda_id]
  end

  def create
    @slot = Slot.new(params[:slot])
    @slot.agenda_id = session[:agenda_id]
    session.delete(:agenda_id)
    if @slot.save
      redirect_to event_agenda_path(current_event, @slot.agenda_id)
    else
      render action: "new"
    end
  end
  
  def edit
    @slot = Slot.find(params[:id])
  end
  
  def update
    @slot = Slot.find(params[:id])
    if @slot.update_attributes(params[:slot])
      redirect_to event_slot_path(current_event, @slot)
    else
      render action: "edit"
    end
  end

end