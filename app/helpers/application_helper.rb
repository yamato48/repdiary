module ApplicationHelper
  def nav_item_active(path_name)
    request.url.include?(path_name) ? 'list-group-item active' : 'nav-item'
  end

  def nav_user_signed
    if user_signed_in?
      link_to 'ユーザー', '#', class: nav_item_active('Users')
    else
      link_to 'ログイン', destroy_user_session, class: nav_item_active('Users')
    end
  end
end
