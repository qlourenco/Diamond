module NavbarHelper
  # def back_arrow_devise?
  #   controller_name == 'confirmations' || 'registrations'
  #   # || 'sessions' || 'mailer' || 'passwords'
  #   # (controller_name == 'vinyls' && ['index'].include?(action_name))
  # end

  # def back_arrow?
  #   params[:action] == 'show' && params[:controller] == 'vinyls'
  #   # || params[:action] == 'index' && params[:controller] == 'vinyls'
  #   # (controller_name == 'vinyls' && ['show'].include?(action_name))
  # end

  def collection_bottom_navbar?
    (controller_name == 'pages' && action_name == 'home_user')
  end

  def dark_show_bottom_navbar?
    (controller_name == 'vinyls' && action_name == 'show')
  end

  def white_bottom_navbar?
    (controller_name == 'vinyls' && action_name == 'index') ||
    (controller_name == 'user_vinyls' && action_name == 'index') ||
    (controller_name == 'suggestions' && action_name == 'index') ||
    (controller_name == 'favorites' && action_name == 'index')
  end

  def dark_bottom_navbar?
    (controller_name == 'user_vinyls' && action_name == 'show') ||
    (controller_name == 'vinyls' && action_name == 'scan') ||
    (controller_name == 'suggestions' && action_name == 'show') ||
    (controller_name == 'favorites' && action_name == 'show')
  end
end
