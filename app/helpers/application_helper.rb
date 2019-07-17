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

  def logged_in?
    current_user != nil
  end

  def gravatar_for(user, options = { size: 80})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = 'https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}'
    image_tag(gravatar_url, alt: user.email, class: 'rounded-circle')
  end

end
