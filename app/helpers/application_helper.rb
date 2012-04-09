module ApplicationHelper
  def title(*str_arr)
    str = str_arr.join(" | ")
    content_for(:title) do
      str
    end
    content_tag('span', str)
  end

  def bootstrap_icon(name)
    content_tag('i', nil, :class => "icon-#{name}")
  end
end
