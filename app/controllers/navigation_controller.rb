class NavigationController < ApplicationController

  def index
    #TODO falta seleccionar el Open Space, por ahora solo selecciona el último
    #Idea: seleccionar el Open Space por subdominio, ejem: http://agileopenlima.openspace.heroku.com
    session[:event_id] = Event.last.id
  end

end
