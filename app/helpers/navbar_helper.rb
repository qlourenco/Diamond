module NavbarHelper
  def back_arrow?
    controller_name == 'registration' ||
    (controller_name == 'vinyls' && ['index', 'show'].include?(action_name))
  end

  def white_bottom_navbar?
    (controller_name == 'pages' && action_name == 'home_user') ||
    (controller_name == 'user_vinyls' && action_name == 'index') ||
    (controller_name == 'suggestions' && action_name == 'index') ||
    (controller_name == 'favorites' && action_name == 'index')
  end

  def dark_bottom_navbar?
    (controller_name == 'user_vinyls' && action_name == 'show') ||
    (controller_name == 'suggestions' && action_name == 'show') ||
    (controller_name == 'favorites' && action_name == 'show')
  end
end
