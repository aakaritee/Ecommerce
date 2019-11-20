module ApplicationHelper
  
  def cart_count_over_one
    if @cart.line_items.count > 0
      return @cart.line_items.count
    end
  end

  def cart_has_items
    return @cart.line_items.count > 0
  end

  def admin
    user_signed_in? && current_user.id == 9999
  end
end
