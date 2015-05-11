module CategoriesHelper
  
  def user_is_admin?
    return true if user_signed_in? && current_user.admin?
  end
  
end
