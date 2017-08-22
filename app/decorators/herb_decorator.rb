class HerbDecorator < Draper::Decorator
  delegate_all

  def hname
    CGI.unescapeHTML(name)
  end

end
