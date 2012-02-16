class EventsController < ApplicationController

  def show
    @event = current_event
  end

end
