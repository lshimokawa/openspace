class NavigationController < ApplicationController

  def index
    @events = Event.current_events
  end
  
  def about
  end
  
  def openspace
  end

end
