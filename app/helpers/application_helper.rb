module ApplicationHelper
  def add_title_part(str)
    content_for(:title) do
      str.to_s + " | "
    end
  end

  def title(str)
    add_title_part(str)
    content_tag('span', str)
  end

  def bootstrap_icon(name, options={})
    classes = ["icon-#{name}"]
    classes << 'icon-white' if options[:color] == 'white'
    content_tag('i', nil, :class => classes.join(' '))
  end
end
