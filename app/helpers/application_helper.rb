module ApplicationHelper
  def nav_item_active(path_name)
    request.url.include?(path_name) ? 'list-group-item active' : 'nav-item'
  end
end
