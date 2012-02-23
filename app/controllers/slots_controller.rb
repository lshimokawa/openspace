class SlotsController < ApplicationController
  
  def show
    @slot = Slot.find(params[:id])
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
