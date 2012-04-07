module ApplicationHelper
  def title(*str_arr)
    str = str_arr.join(" | ")
    content_for(:title) do
      str
    end
    content_tag('h2', str)
  end
end
