module ApplicationHelper
  
  # Hack for nested singular resources
  # http://stackoverflow.com/questions/2261827/nested-form-for-singular-resource
  def event_agendas_path(*args)
    event_agenda_path(*args)
  end

  def link_to_home
    link_to "", root_path, 'data-icon'=> 'home', 'data-direction'=> 'reverse', 'data-iconpos'=>'notext'
  end
  
  def link_to_authentication
    if current_user
      link_to "Logout", signout_path, 'data-role'=> 'button', 'data-icon'=>'twitter', 'class'=>'ui-btn-right'
    else
      link_to "Signin", "/auth/twitter", 'data-role'=>'button', 'data-icon'=>'twitter', 'class'=>'ui-btn-right', :rel => 'external'
    end
  end
  
  def link_to_event
    link_to "Evento", menu_event_path(current_event), 'data-icon'=> 'back', 'data-direction'=> 'reverse'
  end
  
  def link_to_sessions
    link_to "Sesiones", event_sessions_path(current_event), 'data-icon'=> 'back', 'data-direction'=> 'reverse'
  end
  
  def link_to_agenda
    link_to "Agenda", event_agenda_index_path(current_event), 'data-icon'=> 'back', 'data-direction'=> 'reverse'
  end
  
  def link_to_users
    link_to "Regresar", users_path, "data-icon"=>"back", 'data-direction'=> 'reverse'
  end
  
  #TODO hay una mejor forma de hacer esto?
  def href_link(url)
    "<a href='#{url}' rel='external'>#{url}</a>".html_safe
  end
  
  #TODO validar si ya tiene el @
  def twitter_link(nickname)
    "<a href='https://twitter.com/#!/#{nickname}' rel='external'>@#{nickname}</a>".html_safe
  end
  
  #TODO validar si ya tiene el # 
  def twitter_hashtag_search_link(hashtag)
    "<a href='https://twitter.com/#!/search/%23#{hashtag}' rel='external'>##{hashtag}</a>".html_safe
  end
  
end
