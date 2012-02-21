class NavigationController < ApplicationController

  def index
    @events = Event.all
  end
  
  def about
  end
  
  def openspace
  end

end
