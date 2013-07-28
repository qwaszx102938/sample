module ApplicationHelper
  def full_title(page_title)
    base_title="william's"
    if page_title.empty?
       base_title+" title is empty"
    else
      base_title+" "+page_title
    end
  end
end
