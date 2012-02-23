class SlotsController < ApplicationController
  
  def edit
    @slot = Slot.find(params[:id])
  end
  
  def update
    @slot = Slot.find(params[:id])
    if @slot.update_attributes(params[:slot])
      redirect_to event_agenda_path(current_event, @slot.agenda)
    else
      render action: "edit"
    end
  end

end
