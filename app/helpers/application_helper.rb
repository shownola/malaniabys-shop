module ApplicationHelper

  def admin_types
    ['AdminUser']
  end

  # def customer?
  #   current_user.type == 'Customer'
  # end




  def admin?
    admin_types.include?(current_user.type)
  end
end
