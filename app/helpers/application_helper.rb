module ApplicationHelper
  
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
