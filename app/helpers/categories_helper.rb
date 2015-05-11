module CategoriesHelper
  
  def user_is_admin?
    return true if user_signed_in? and current_user.admin?
  end
  
  def owner_of_product?(product)
    return true if product.user_id == current_user.id
  end
  
  def owner_of_product(product)
    user = User.find product.user_id
    if current_user == user
      'Me'
    else
      user.firstname + " " + user.lastname unless user.nil?
    end
  end
  
end
