require'open-uri'
class Webpage
  attr_reader :address

  def initialize(address)
    @address = address
  end

  def page_content
    @content ||= open(address).read
  end

  def headline
    unless page_content.index("<h1").nil?
      p page_content[start..finish]
    else
      p "There were no h1 tags on #{address}"
    end
  end

  def start
    OpeningTag.new("h1", page_content).finish + 1
  end

  def finish
    page_content.index("</h1>") - 1
  end
end

class OpeningTag
  attr_reader :name, :context
  def initialize(name, context)
    @name = name
    @context = context
  end

  def start
    context.index("<#{name}")
  end

  def finish
    context.index(">", start)
  end
end
