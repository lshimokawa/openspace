class NavigationController < ApplicationController

  def index
    @events = Event.all
  end

end
