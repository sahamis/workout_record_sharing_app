module ApplicationHelper

  def site_title(page_title='')
    base_title="Workout record sharing app"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
end
