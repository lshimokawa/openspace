module ApplicationHelper
  
  def twitter_link(nickname)
    link = '<a href="https://twitter.com/#!/'+ nickname + '" rel="external">@' + nickname + '</a>'
    link.html_safe
  end
  
end
