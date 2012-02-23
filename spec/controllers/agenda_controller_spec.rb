require 'spec_helper'

describe AgendaController do
  render_views
  
  it "show the agenda of the event" do
    agenda = Factory(:agenda)
    get :index, :event_id => agenda.event.id
    assigns(:agenda).should eq([agenda])
  end

end
