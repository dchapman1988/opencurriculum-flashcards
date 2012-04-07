module FlashHelper
  def show_flash
    [:success, :error, :info].collect do |key|
      content_tag(:div, flash[key], :class => "alert alert-#{key}") unless flash[key].blank?
    end.join.html_safe
  end
end
