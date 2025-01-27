module ApplicationHelper
  def total_usuarios
    User.count
  end
end
